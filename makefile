CFLAGS = -Wall
#target myexe
all: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o
#rebuild if either of the files below change
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp
#rebuild if either of the files below change
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp
#type 'make clean' to remove the following
clean:
	rm -f *.o myexe
