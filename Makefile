NAME=cogger

CFLAGS= -Wall -Wextra -Werror -ggdb -O3 -std=gnu11
TESTFLAGS= -I. -L. -lcogger

${NAME}.o: cogger.c
	cc cogger.c -o ${NAME}.o ${CFLAGS} -c
	ar ruv libcogger.a cogger.o
	ranlib libcogger.a
	make compiletest
	./test

compiletest: 
	cc test.c -o test ${CFLAGS} ${TESTFLAGS}

install: 
	sudo install -D lib${NAME}.a /usr/lib/${NAME}/
	sudo install -D cogger.h /usr/include/${NAME}/

uninstall:
	sudo rm -r /usr/lib/${NAME}/
	sudo rm -r /usr/include/${NAME}/

clean:
	rm lib${NAME}.a ${NAME}.o test
