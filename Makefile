# Reasonable defaults
CC = gcc
CFLAGS = -O3

# Other UNIX compilers
#CC = cc

# Optimization under OS X
#CFLAGS = -fast

PROGS = tree2PS-fast taxonomy2tree taxBuilder

all: $(PROGS)

tree2PS-fast: avl.o
	$(CC) $(CFLAGS) avl.o $@.c -o $@

taxonomy2tree: avl.o
	$(CC) $(CFLAGS) avl.o $@.c -o $@

taxBuilder: avl.o
	$(CC) $(CFLAGS) avl.o $@.c -o $@

avl.o:
	$(CC) $(CFLAGS) -c avl.c -o $@

clean:
	rm -f *.o $(PROGS)
