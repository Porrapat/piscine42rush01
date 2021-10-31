.DEFAULT_GOAL := run
norminette:
	-norminette ./ex00/common.c
	-norminette ./ex00/parsing.c
	-norminette ./ex00/rules.c
	-norminette ./ex00/main.c

compile:
	-gcc ./ex00/functions.h ./ex00/common.c ./ex00/parsing.c ./ex00/rules.c ./ex00/main.c -o ./ex00/main

run:	compile
	-./ex00/main "4 1 2 3 1 2 2 2 2 2 2 1 3 2 1 4"

clean:
	-rm -rf ./ex00/main


