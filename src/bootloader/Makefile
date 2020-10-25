PROGNAME := boot

SOURCES := main.c
SOURCES += ../avr_common/uart.c

include ../avr_common/Makefile.inc

LDFLAGS += -nostartfiles

all: check-size
program:  $(PROGNAME).hex check-size fuses

check-size: $(PROGNAME).hex
	@real_boot_size=$$( $(SIZE) -A $(PROGNAME).hex \
						| tr -s ' \n' | tail -n1 | cut -f2 -d' ' ); \
	printf "Bootloader is 0x%04x bytes, BOOT section 0x%04x bytes.\n" \
		$$real_boot_size $(BOOTSIZE); \
	if [ $(BOOTSIZE) -lt $$real_boot_size ]; then \
		printf "Bootloader (0x%04x) does not fit in BOOT section (0x%04x).\n" \
			$$real_boot_size $(BOOTSIZE); \
		exit 1; \
	fi

fuses:
	$(LOG) "[PYUPDI]"
	$(PYUPDI) -d $(PYUPDI_MCU) -c $(PROGRAMMER_PORT) -fs 8:$(BOOTBLOCKS_HEX)
