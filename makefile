# File: makefile

.SUFFIXES:
.SUFFIXES: .scm .s .o .exe

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
  GCC_LINK_OPTIONS = -Wl,-no_pie
else
  GCC_LINK_OPTIONS = 
endif

all: test1.exe test2.exe test3.exe

test1.exe: stdio.o test1.o
	gcc $(GCC_LINK_OPTIONS) -o $@ $^

test2.exe: stdio.o test2.o
	gcc $(GCC_LINK_OPTIONS) -o $@ $^

test3.exe: stdio.o test3.o
	gcc $(GCC_LINK_OPTIONS) -o $@ $^

.s.o:
	gcc -c -o $*.o $*.s

test: all
	./test1.exe
	./test2.exe
	./test3.exe

clean:
	rm -f *.o *.exe *~
