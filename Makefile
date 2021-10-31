.DEFAULT_GOAL := run
norminette:
	-norminette ./ex00/functions.h
	-norminette ./ex00/common.c
	-norminette ./ex00/parsing.c
	-norminette ./ex00/checkutil.c
	-norminette ./ex00/rules.c
	-norminette ./ex00/main.c

compile:	norminette
	-gcc ./ex00/functions.h ./ex00/common.c ./ex00/parsing.c ./ex00/checkutil.c ./ex00/rules.c ./ex00/main.c -o ./ex00/main -Wall -Werror -Wextra

run:	compile
	-./ex00/main "4 1 2 3 1 2 2 2 2 2 2 1 3 2 1 4" | cat -e

test:
	-./ex00/main "4 3 2 1 1 2 2 2 4 3 2 1 1 2 2 2" | cat -e

test2:
	-./ex00/main "2 2 3 1 2 2 1 3 3 2 1 2 1 3 2 2" | cat -e

test3:
	-./ex00/main "2 3 1 3 3 1 2 2 2 1 3 2 2 2 1 3" | cat -e

test-nosolution:
	-./ex00/main "2 3 4 1 1 2 3 4 1 4 2 3 3 4 2 1" | cat -e

clean:
	-rm -rf ./ex00/main


