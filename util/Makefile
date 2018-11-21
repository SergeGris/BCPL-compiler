# Makefile for bcplc/util

BC=bcplc
BFLAGS=-O

all: cmpltest xref gpm

cmpltest: cmpltest.bcpl
	$(BC) $(BFLAGS) cmpltest.bcpl

xref: xref.bcpl
	$(BC) $(BFLAGS) xref.bcpl

gpm: gpm.bcpl
	$(BC) $(BFLAGS) gpm.bcpl

install:

clean:
	rm -f cmpltest cmpltest.o
	rm -f xref xref.o
	rm -f gpm gpm.o
