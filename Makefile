include Makefile.config

source_dir = ./src
bin_dir = ./bin

sources = $(wildcard $(source_dir)/*.c)
targets = $(notdir $(basename $(sources)))

define COMPILE
.PHONY: $(1)
$(1): $(1).o
	$(CC) $(CFLAGS) -o $(bin_dir)/$(1) $(1).o
	@$(RM) $(1).o
$(1).o:
	$(CC) $(CFLAGS) -c $(source_dir)/$(1).c
endef

.PHONY: all
all: $(targets)
$(foreach target,$(targets),$(eval $(call COMPILE,$(target))))

.PHONY: clean
clean:
	$(RM) $(bin_dir)/*
