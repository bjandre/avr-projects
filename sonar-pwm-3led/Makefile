# -*- mode: Makefile -*-
current_makefile = $(word $(words $(MAKEFILE_LIST)), $(MAKEFILE_LIST))
makefile_name := $(current_makefile)

include ../Makefile.inc

SUBDIRS = ../utils

HEX = sonar-pwm-3led.hex
ELF = sonar-pwm-3led.elf
SRCS = \
	sonar-pwm-3led.c

OBJS = \
	$(SRCS:%.c=%.o)

LDFLAGS = -L../utils -lbjaavr

CLOCK=1000000

CFLAGS += -DF_CPU=$(CLOCK)
CFLAGS += -I../utils

# MAKECMDGOALS is the make option: make 'clobber' or 'all'
TARGET = $(MAKECMDGOALS)

#
# macro for executing TARGET in all SUBDIRS
#
ifdef SUBDIRS
$(SUBDIRS) : FORCE
	@if [ -d $@ ]; then \
		echo $(WHERE_ART_THOU); \
		$(MAKE) --file $(makefile_name) --directory=$@ $(TARGET); \
	fi
endif
	@echo Build complete: $@ : $(shell date)

all : $(SUBDIRS) $(HEX)

flash : all
	$(AVRDUDE) $(AVRDUDEFLAGS) -U flash:w:$(HEX):i

read-elf : $(ELF)
	avr-readelf --all $<

#
# Generic rule to generate objects
#
%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<


all : $(HEX)

$(ELF) :$(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LDFLAGS)

$(HEX) : $(ELF)
	rm -f $(HEX)
	avr-objcopy -j .text -j .data -O ihex $(ELF) $@
	avr-size --format=avr --mcu=$(CHIP) $(ELF)


clean : $(SUBDIRS)
	rm -rf *~ *.o lfuse.hex hfuse.hex efuse.hex $(HEX) $(ELF)
