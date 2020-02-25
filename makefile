.PHONY: clean
all: test

test: main.o add.o mul.o dvd.o
	g++ main.o add.o mul.o dvd.o -o test

main.o: main.cpp
	g++ -c main.cpp

add.o: add.cpp
	g++ -c add.cpp

mul.o: mul.cpp
	g++ -c mul.cpp

dvd.o: dvd.cpp
	g++ -c dvd.cpp

clean: 
	rm *.o test