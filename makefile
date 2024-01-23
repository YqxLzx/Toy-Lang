# Makefile
CC = gcc
CFLAGS = -Wall -Werror

all: program

program: main.o Module1.o Module2.o
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.c Module1.h Module2.h
	$(CC) $(CFLAGS) -c $<

Module1.o: Module1.c Module1.h
	$(CC) $(CFLAGS) -c $<

Module2.o: Module2.c Module2.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o program
