CC=gcc
F=flex
CFLAGS=-o
LFLAGS=-lfl
FNAME=mini.lex

primes.min:	lexer
	cat tests/primes.min | bin/./lexer > outputs/primes.out

mytest.min: lexer
	cat tests/mytest.min | bin/./lexer > outputs/mytest.out

customtests.min: lexer
	cat tests/customtests.min | bin/./lexer > outputs/customtests.out

lexer: flex
	$(CC) $(CFLAGS) bin/lexer lex.yy.c $(LFLAGS)

flex:
	$(F) $(FNAME)

clean:
	rm lexer lex.yy.c outputs/*.out
