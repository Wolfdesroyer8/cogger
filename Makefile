NAME=cogger

CFLAGS= -Wall -Wextra -ggdb -O4 -std=gnu11
LIBFLAGS= -c
TESTFLAGS= -I. -L. -lcogger

${NAME}.o: cogger.c
	cc cogger.c -o ${NAME}.o ${CFLAGS} ${LIBFLAGS}
	ar ruv libcogger.a cogger.o
	ranlib libcogger.a
	make compiletest
	./test

compiletest: 
	cc test.c -o test ${CFLAGS} ${TESTFLAGS}

install: ${NAME}
	install ${NAME} /usr/bin/${NAME}

clean:
	rm lib${NAME}.a ${NAME}.o test
