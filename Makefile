CC=g++
#CFLAGS=-Wall -W -g -Werror 
# Uncomment this line for the graduate student version
CFLAGS= -g  -DGRAD=1

LOADLIBES= -lnsl

all: client server

client: client.cpp raw.c
	$(CC) client.cpp raw.c $(LOADLIBES) $(CFLAGS) -o client

server: server.cpp
	$(CC) server.cpp $(LOADLIBES) $(CFLAGS) -o server

clean:
	rm -f client server *.o

