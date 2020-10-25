PROGNAME := koeklok

SOURCES := $(wildcard *.c)
SOURCES += ../avr_common/uart.c

PROGRAMMER := hostctl

include ../avr_common/Makefile.inc

LDFLAGS += -Wl,--section-start=.text=$(BOOTSIZE_HEX)

flash: $(PROGNAME).hex
	python3 ../host/koeklok.py flash $(PROGNAME).hex

