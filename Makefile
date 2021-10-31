.DEFAULT_GOAL := run
norminette:
	-norminette ./ex00/functions.h
	-norminette ./ex00/common.c
	-norminette ./ex00/parsing.c
	-norminette ./ex00/checkutil.c
	-norminette ./ex00/rules.c
	-norminette ./ex00/main.c

compile:	norminette
	-gcc ./ex00/functions.h ./ex00/common.c ./ex00/parsing.c ./ex00/checkutil.c ./ex00/rules.c ./ex00/main.c -o ./ex00/main

run:	compile
	-./ex00/main "4 1 2 3 1 2 2 2 2 2 2 1 3 2 1 4"

test:
	-./ex00/main "4 3 2 1 1 2 2 2 4 3 2 1 1 2 2 2"

clean:
	-rm -rf ./ex00/main


