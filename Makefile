APPLICATION = lora3a-dongle-sniffer
BOARD ?= lora3a-dongle
RIOTBASE ?= $(CURDIR)/../RIOT
EXTERNAL_BOARD_DIRS ?= $(CURDIR)/../lora3a-boards/boards
QUIET ?= 1
DEVELHELP ?= 1

USEMODULE += od
USEMODULE += od_string
USEMODULE += fmt
USEMODULE += printf_float

USEMODULE += sx1276
USEMODULE += stdio_cdc_acm
USEMODULE += periph_spi_reconfigure

TERMDELAYDEPS := $(filter reset flash flash-only, $(MAKECMDGOALS))
ifneq (,$(TERMDELAYDEPS))
  # By default, add 2 seconds delay before opening terminal: this is required
  # when opening the terminal right after flashing. In this case, the stdio
  # over USB needs some time after reset before being ready.
  TERM_DELAY ?= 2
  TERMDEPS += term-delay
endif

term-delay: $(TERMDELAYDEPS)
	sleep $(TERM_DELAY)

include $(RIOTBASE)/Makefile.include
