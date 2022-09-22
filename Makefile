CC=gcc
CFLAGS=-Wall -Wextra -Werror -std=c99 -pedantic-errors \
       -ggdb -fsanitize=address -fsanitize=pointer-compare -fsanitize=undefined \
       -fsanitize=leak -ftrapv
	#-O2 -march=native -mtune=native
PROGNAME=bind-mount
LIBS=
OBJS=$(PROGNAME).o
SOURCE_DIR ?= ${HOME}/.vim
# https://stackoverflow.com/a/23324703/5956768
TARGET_DIR ?= $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))/.vim

.PHONY: all clean clean-all suid-root

all: suid-root

$(PROGNAME): $(OBJS)
	$(CC) $(CFLAGS) -o '$@' $^ $(LIBS)

$(PROGNAME).o: $(PROGNAME).c
	$(CC) -x c $(CFLAGS) -c -o '$@' '$<'

$(PROGNAME).c: $(PROGNAME).c.in
	sed 's!@SOURCE_DIR@!"$(SOURCE_DIR)"!;s!@TARGET_DIR@!"$(TARGET_DIR)"!' '$<' > '$@'

clean:
	-@rm $(OBJS) $(PROGNAME).c
clean-all: clean
	-@rm ./$(PROGNAME)

suid-root: $(PROGNAME)
	sudo chown root $^
	sudo chmod 04755 $^

# ex: set filetype=make:
