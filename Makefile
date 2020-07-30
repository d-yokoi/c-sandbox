include Makefile.config

source_dir = ./src
bin_dir = ./bin

define COMPILE
$(1): $(1).o
	$(CC) $(CFLAGS) -o $(bin_dir)/$(1) $(1).o
	@$(RM) $(1).o
$(1).o:
	$(CC) $(CFLAGS) -c $(source_dir)/$(1).c
endef

hello: $(source_dir)/hello.c
$(eval $(call COMPILE,hello))

.PHONY: clean
clean:
	$(RM) $(bin_dir)/*
