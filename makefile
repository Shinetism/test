.PHONY: clean
all: test

test: main.o add.o mul.o dvd.o
	g++ main.o add.o mul.o dvd.o -o test
	@echo test done

%.o: %.cpp
	g++ -c $*.cpp
	@echo $*.o done

clean: 
	rm *.o test
	@echo remove done