GEN_TABLES=./gen_tables.py
LINUX_SRC=/usr/src/linux-headers-5.8.0-48-generic/

.PHONY: all clean
all: ministrace

ministrace.o: syscalls.h syscallents.h

syscallents.h: $(GEN_TABLES)
	$(GEN_TABLES) $(LINUX_SRC)

clean:
	rm -f ministrace ministrace.o syscallents.h
