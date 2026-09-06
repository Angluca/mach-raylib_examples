.PHONY: all clean run

MAKE ?= make
ifeq ($(PLATFORM_OS),WINDOWS)
    MAKE = mingw32-make
endif

ARGS ?= -L ./libs
MFLAGS = $(ARGS)

SRC_DIRS := core audio models others shaders shapes text textures
SRC_ROOT := src
DIRS := $(addprefix $(SRC_ROOT)/,$(SRC_DIRS))

vpath %.mach $(DIRS)

SRCS    := $(foreach d,$(DIRS),$(wildcard $(d)/*.mach))
TARGETS := $(sort $(notdir $(basename $(SRCS))))

all: $(TARGETS)

.PHONY: $(TARGETS)

$(TARGETS): %: %.mach
	mach build . $(MFLAGS) -v --bin $@

RUN_TARGET := $(firstword $(filter-out run,$(MAKECMDGOALS)))
ifeq ($(RUN_TARGET),)
ifeq ($(filter run,$(MAKECMDGOALS)),run)
$(error usage: make run <name>, example: make run demo)
endif
endif

run: $(RUN_TARGET)
	mach run . --bin $(RUN_TARGET)

clean:
	@rm -rf ./out

