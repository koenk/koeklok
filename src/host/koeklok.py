#!/usr/bin/env python3

import argparse
import math
import serial
import sys
import time
from intelhex import IntelHex


DEFAULT_PORT = '/dev/ttyUSB1'
DEFAULT_BAUD = 115200

BLOCK_SIZE = 128  # MAPPED_PROGMEM_PAGE_SIZE

def do_flash(ser, f, block_size, do_direct):
    OK = bytes([0])
    ERR = bytes([1])

    ih = IntelHex()
    ih.fromfile(f, format='hex')

    start, end = ih.minaddr(), ih.maxaddr()
    nblocks = int(math.ceil((end - start) / block_size))

    print(f'Preparing to flash {f.name}, from 0x{start:04x}-0x{end:04x}, '
          f'{nblocks} blocks')

    if nblocks > 255:
        print(f'ERROR: Can only flash up to 255 blocks')

    if not do_direct:
        ser.write(b'flash\n')
        ser.readline()  # Command we sent

    while True:
        # Retry flashing process until success

        print('Waiting for bootloader message...')
        while True:
            msg = ser.readline().strip()
            print('Serial recv', msg)
            if msg.startswith(b'BR'):
                break

        bootend = int(msg.split()[1], 16)
        print(f'Device BOOTEND = {bootend:04x}')
        if bootend != start:
            print(f'ERROR: Device BOOTEND does not match start of {f.name}')
            sys.exit(1)

        ser.write(bytes([nblocks]))
        ack = ord(ser.read(1))
        if ack != nblocks:
            print(f'ERROR: Device did not acknowledge blockcnt (resp: {ack})')
            continue
        ser.write(OK)

        for block in range(nblocks):
            while True:
                # Retry flashing block until read back correctly

                print(f'Flashing block {block}/{nblocks}')
                blockaddr = start + block * block_size
                ser.write(ih.tobinstr(blockaddr, size=block_size))

                ok = True
                ack = ser.read(block_size)
                for off in range(block_size):
                    addr = blockaddr + off
                    if ack[off] != ih[addr]:
                        print(f'ERROR: Error at 0x{addr:04x} (block {block} '
                            f'offset {off}), wrote {ih[addr]}, got {ack}')
                        ok = False
                        break

                ser.write(OK if ok else ERR)
                if ok:
                    break

        msg = ser.readline().strip()
        if not msg.startswith(b'OK'):
            print(f'ERROR: Something went wrong, did not receive OK ({msg})')
            continue

        ser.write(OK)
        break

    print('Flashing successful! Device will boot into firmware now')


def datetime(s):
    try:
        time.strptime(s, '%d-%m-%Y')
        s += ' 00:00:00'
    except ValueError as e:
        pass
    try:
        dt = time.strptime(s, '%d-%m-%Y %H:%M:%S')
    except ValueError as e:
        raise argparse.ArgumentTypeError(str(e))
    if dt.tm_year < 1900 or dt.tm_year > 2099:
        raise argparse.ArgumentTypeError('Year must be between 1900 and 2100.')
    return s


def main():
    parser = argparse.ArgumentParser(description='Control Koeklok via UART')
    parser.add_argument('-p', '--port',
            help='serial port device (default %s)' % DEFAULT_PORT,
            default=DEFAULT_PORT)
    parser.add_argument('-b', '--baud',
            help='serial port baudrate (default %d)' % DEFAULT_BAUD,
            nargs=1, default=DEFAULT_BAUD)
    subparsers = parser.add_subparsers(help='Command', dest='command')
    subparsers.required = True
    subparsers.add_parser('set-time', help='Set time from system clock.')
    subparsers.add_parser('get-time', help='Print time stored in device.')
    subparsers.add_parser('set-date', help='Set date from system clock.')
    subparsers.add_parser('get-date', help='Print date stored in device.')
    subparsers.add_parser('enable-datediff', help='Enable date-diff mode.')
    subparsers.add_parser('disable-datediff', help='Disable date-diff mode.')
    subparsers.add_parser('set-datediff',
            help='Set target date and time for date-diff mode.')\
                    .add_argument('target', type=datetime)
    subparsers.add_parser('get-datediff',
            help='Print target date and time for date-diff mode.')
    subparsers.add_parser('set-brightness',
            help='Set display brightness (from 0-7).')\
                    .add_argument('brightness', type=int)
    subparsers.add_parser('get-brightness',
            help='Print display brightness (from 0-7).')
    subparsers.add_parser('get-temp', help='Print current temperate of clock.')
    subparsers.add_parser('get-version',
            help='Print firmware version of device.')

    fp = subparsers.add_parser('flash',
            help='Flash firmware onto device via bootloader.')
    fp.add_argument('file', help='Intel HEX file to flash',
            type=argparse.FileType('r'))
    fp.add_argument('-s', '--page-size', help='page size for flashing',
            nargs=1, type=int, default=BLOCK_SIZE)
    fp.add_argument('--direct', help='device is already in bootloader '
            '(skip entering bootloader through firmware serial UI)',
            action='store_true')

    args = parser.parse_args()

    cmds = {
        'set-time': 'ts ' + time.strftime('%H:%M:%S'),
        'get-time': 'tg',
        'set-date': 'ds ' + time.strftime('%d:%m:%Y'),
        'get-date': 'dg',
        'enable-datediff': 'dde 1',
        'disable-datediff': 'dde 0',
        'set-datediff': 'dds ' + getattr(args, 'target', ''),
        'get-datediff': 'ddg',
        'set-brightness': 'bs %d' % getattr(args, 'brightness', 0),
        'get-brightness': 'bg',
        'get-temp': 'temp',
        'get-version': 'ver'
    }

    with serial.Serial(args.port, args.baud) as ser:
        if args.command == 'flash':
            do_flash(ser, args.file, args.page_size, args.direct)
        else:
            cmd = cmds[args.command].encode('utf-8')
            ser.write(cmd + b'\n')
            ser.readline()  # Command we sent
            print(ser.readline().decode('utf-8').strip())


if __name__ == '__main__':
    main()
