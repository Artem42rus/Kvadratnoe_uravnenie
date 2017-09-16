.PHONY: clean all test
CFLAGS = -Wall -Werror -MP -MMD 

all: bin/education

bin/education: main.o function.o
	@echo "Make is 100%" 
	@gcc $(CFLAGS) main.o function.o -o education -lm

build/main.o: main.c function.h
	@gcc $(CFLAGS) -c main.c -o main.o -lm 

build/function.o: function.c function.h 
	@gcc $(CFLAGS) -c function.c -o function.o

test: 
	make bin/education_test 
	bin/education_test 



clean:
	@echo "Cleaning files in build directory" 	
	@rm -rf *.d *.o 
	@rm -rf *.d *.o


