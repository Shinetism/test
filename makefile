.PHONY: clean
all: test

test: main.o add.o mul.o dvd.o
	@echo test done
	g++ main.o add.o mul.o dvd.o -o test

main.o: main.cpp
	@echo main.o done
	g++ -c main.cpp

add.o: add.cpp
	@echo add.o done
	g++ -c add.cpp

mul.o: mul.cpp
	@echo mul.o done
	g++ -c mul.cpp

dvd.o: dvd.cpp
	@echo dvd.o done
	g++ -c dvd.cpp

clean: 
	@echo remove done
	rm *.o test