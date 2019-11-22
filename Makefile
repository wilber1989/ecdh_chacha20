CC=gcc
CFLAGS=-Wall 
LIBS= -L ./wolf/lib -lwolfssl -pthread -lm

all: signature

signature: signature.o
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f *.o signature
