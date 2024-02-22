CC=gcc
CFLAGS=-Wall

ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
    CC = aarch64-none-linux-gnu-gcc
endif

all: writer
writer: writer.c
	$(CC) $(CFLAGS) -o writer writer.c
clean:
	-rm -f writer