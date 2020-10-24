CC=gcc
F=flex
CFLAGS=-o
LFLAGS=-lfl
FNAME=mini.lex

# ============ Core Makes ============= #
primes.min:	lexer-mini
	cat tests/primes.min | bin/./lexer > output/primes.out

mytest.min: lexer-mini
	cat tests/mytest.min | bin/./lexer > output/mytest.out

integrationtests.min: lexer-mini
	cat tests/customtests.min | bin/./lexer > output/customtests.out

lexer-mini: flex-mini
	$(CC) $(CFLAGS) bin/lexer lex.yy.c $(LFLAGS)

flex-mini:
	$(F) $(FNAME)

clean:
	rm lexer lex.yy.c output/*.out bin/*

# ============ Custom Makes ============ #

### All Tests
all: op.min iden.min num.min white.min

### Operators
op.min: lexer-op
	cat tests/op.min | bin/./lexer-op > output/op.out

lexer-op: flex-op
	$(CC) $(CFLAGS) bin/lexer-op lex.yy.c $(LFLAGS)

flex-op:
	$(F) src/op.lex

### Identifiers
iden.min: lexer-iden
	cat tests/iden.min | bin/./lexer-iden > output/iden.out

lexer-iden: flex-iden
	$(CC) $(CFLAGS) bin/lexer-iden lex.yy.c $(LFLAGS)

flex-iden:
	$(F) src/iden.lex

### Numbers
num.min: lexer-num
	cat tests/num.min | bin/./lexer-num > output/num.out

lexer-num: flex-num
	$(CC) $(CFLAGS) bin/lexer-num lex.yy.c $(LFLAGS)

flex-num: 
	$(F) src/num.lex

### Whitespace
white.min: lexer-white
	cat tests/white.min | bin/./lexer-white > output/white.out

lexer-white: flex-white
	$(CC) $(CFLAGS) bin/lexer-white lex.yy.c $(LFLAGS)

flex-white:
	$(F) src/white.lex



