CC = gcc
FLAGS = -Wall -g

# Corrected 'all' target to build 'main' executable only
all: main

# 'main' target depends on 'main.o' and 'StrList.o'
main: main.o StrList.o
	$(CC) $(FLAGS) -o main main.o StrList.o

# Removed the redundant 'StrList' target, as it seems you want a single executable named 'main'

# Rule to compile 'StrList.o'
StrList.o: StrList.c StrList.h
	$(CC) $(FLAGS) -c StrList.c

# Fixed typo in dependency 'StrList.h' for 'main.o' rule
main.o: main.c StrList.h
	$(CC) $(FLAGS) -c main.c

.PHONY: clean all

clean:
	rm -f *.o main
