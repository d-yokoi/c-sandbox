include Makefile.config

SOURCE = $(wildcard *.c)
OBJS = $(SOURCE:.c=.o)
DEPS = $(SOURCE:.c=.d)
-include ${DEPS}

hello: ${OBJS}
	${CC} -o hello ${OBJS}
