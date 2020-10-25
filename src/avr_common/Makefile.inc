include ../config.mk

ifndef PROGNAME
$(error PROGNAME must be defined)
endif
ifndef SOURCES
$(error SOURCES must be defined)
endif

BLOCKSIZE        ?= 256
BOOTBLOCKS       ?= 4
BOOTSIZE         := $(shell echo $$(( $(BLOCKSIZE) * $(BOOTBLOCKS) )) )
BOOTSIZE_HEX     := $(shell printf "0x%x" $(BOOTSIZE))
BOOTBLOCKS_HEX   := $(shell printf "0x%x" $(BOOTBLOCKS))

MCU              ?= attiny3216
CLOCKRATE        ?= 3333333
PROGRAMMER       ?= pyupdi
PROGRAMMER_PORT  ?= /dev/ttyUSB0
PROGRAMMER_FLAGS ?=

TOOLCHAIN_BIN    ?=


CC      := $(TOOLCHAIN_BIN)avr-gcc
AS      := $(TOOLCHAIN_BIN)avr-as
OBJCOPY := $(TOOLCHAIN_BIN)avr-objcopy
AR      := $(TOOLCHAIN_BIN)avr-ar
SIZE    := $(TOOLCHAIN_BIN)avr-size
AVRDUDE ?= avrdude
PYUPDI  ?= pyupdi.py
HOSTCTL ?= ../host/koeklok.py

OBJS := $(patsubst %.c,%.o,$(SOURCES))

GIT_VERSION := $(shell git describe --dirty="M" --tags --always 2>/dev/null || echo "nogit")

CFLAGS := -g -Os -Wall -Wextra -mmcu=$(MCU) -I../avr_common \
		 -DF_CPU=$(CLOCKRATE)UL -DVERSION=\"$(GIT_VERSION)\" \
		 -DBOOTSIZE=$(BOOTSIZE)
LDFLAGS := -Os -mmcu=$(MCU)

PYUPDI_MCU = $(subst attiny,tiny,$(MCU))


# Verbosity control
ifndef V
	LOG=@printf "\e[1;32m%s\e[0m $@\n"
	MAKEFLAGS += --silent
else
	LOG=@true
endif


.SUFFIXES:
.PRECIOUS: %.o %.elf
.PHONY: program install clean size reset

all: $(PROGNAME).hex

ifeq ($(PROGRAMMER),pyupdi)

program: $(PROGNAME).hex
	$(LOG) [PYUPDI]
	$(PYUPDI) -d $(PYUPDI_MCU) -c $(PROGRAMMER_PORT) -f $(PROGNAME).hex \
		$(PROGRAMMER_FLAGS)

else ifeq ($(PROGRAMMER),avrdude)

program: $(PROGNAME).hex $(PROGNAME).eep
	$(LOG) [AVRDUDE]
	$(AVRDUDE) -c $(PROGRAMMER) -p $(MCU) -u \
		$(PROGRAMMER_FLAGS) \
		-U flash:w:$(PROGNAME).hex:i \
		-U eeprom:w:$(PROGNAME).eep:i

else ifeq ($(PROGRAMMER),hostctl)

program: $(PROGNAME).hex
	$(HOSTCTL) -p $(PROGRAMMER_PORT) flash $(PROGNAME).hex $(PROGRAMMER_FLAGS)

else

$(error Invalid value for PROGRAMMER: $(PROGRAMMER))

endif

install: program

size: $(PROGNAME).elf
	$(SIZE) -C --mcu=$(MCU) $(PROGNAME).elf

reset:
	$(LOG) "[PYUPDI]"
	$(PYUPDI) -d $(PYUPDI_MCU) -c $(PROGRAMMER_PORT) -r

%.o: %.c
	$(LOG) [CC]
	$(CC) -c $(CFLAGS) -o $@ $<
%.elf: $(OBJS) $(LIBS)
	$(LOG) [LINK]
	$(CC) $(LDFLAGS) -o $@ $^ $(SYSTEM_LIBS)
	@chmod a-x $@
%.eep: %.elf
	$(LOG) [OBJCOPY]
	$(OBJCOPY) -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load \
        --no-change-warnings --change-section-lma .eeprom=0 $< $@
%.hex: %.elf
	$(LOG) [OBJCOPY]
	$(OBJCOPY) -O ihex -R .eeprom $< $@

clean:
	rm -f *.o *.elf *.eep *.hex avr_common/*.o
