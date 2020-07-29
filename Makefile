include Makefile.config

SOURCE_DIR = ./src
BIN_DIR = ./bin

define COMPILE
$(1): $(1).o
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$(1) $(1).o
	@$(RM) $(1).o
$(1).o:
	$(CC) $(CFLAGS) -c $(SOURCE_DIR)/$(1).c
endef

hello: $(SOURCE_DIR)/hello.c
$(eval $(call COMPILE,hello))

.PHONY: clean
clean:
	$(RM) $(BIN_DIR)/*
