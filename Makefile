SRCS=$(wildcard ./src/*.c)
OBJS=$(SRCS:./src/%.c=./obj/%.o)
EXE=./bin/main.out

$(EXE) : $(OBJS)
	gcc -o $(EXE) $(OBJS)

obj/%.o : src/%.c
	gcc -c $c -o $@

clean: 
	rm -f bin/*.out obj/*.o