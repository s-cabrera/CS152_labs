CC=gcc
F=flex
CFLAGS=-o
LFLAGS=-lfl
FNAME=mini.lex

###################################
# ========== Core Makes ========= #
###################################

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

#####################################
# ========== Custom Makes ========= #
#####################################



# ===== Make All ===== #

all: op.min iden.min num.min keyword.min special.min comments.min iden_error.min unrec_error.min



# ===== Operators ===== #

op.min: lexer-op
	cat tests/op.min | bin/./lexer-op > output/op.out

lexer-op: flex-op
	$(CC) $(CFLAGS) bin/lexer-op lex.yy.c $(LFLAGS)

flex-op:
	$(F) src/op.lex




# ===== Identifiers ===== #

iden.min: lexer-iden
	cat tests/iden.min | bin/./lexer-iden > output/iden.out

lexer-iden: flex-iden
	$(CC) $(CFLAGS) bin/lexer-iden lex.yy.c $(LFLAGS)

flex-iden:
	$(F) src/iden.lex




# ===== Numbers ===== #

num.min: lexer-num
	cat tests/num.min | bin/./lexer-num > output/num.out

lexer-num: flex-num
	$(CC) $(CFLAGS) bin/lexer-num lex.yy.c $(LFLAGS)

flex-num: 
	$(F) src/num.lex




# ===== Keywords ===== #

keyword.min: lexer-keyword
	cat tests/keyword.min | bin/./lexer-keyword > output/keyword.out

lexer-keyword: flex-keyword
	$(CC) $(CFLAGS) bin/lexer-keyword lex.yy.c $(LFLAGS)	

flex-keyword:
	$(F) src/keyword.lex



# ===== Special ===== #

special.min: lexer-special
	cat tests/special.min | bin/./lexer-special > output/special.out

lexer-special: flex-special
	$(CC) $(CFLAGS) bin/lexer-special lex.yy.c $(LFLAGS)

flex-special:
	$(F) src/special.lex



# ===== Comments ===== #
comments.min: lexer-comments
	cat tests/comments.min | bin/./lexer-comments > output/comments.out

lexer-comments: flex-comments
	$(CC) $(CFLAGS) bin/lexer-comments lex.yy.c $(LFLAGS)

flex-comments:
	$(F) src/comments.lex



# ===== Error Symbols ===== #

unrec_error.min: lexer-unrec_error
	cat tests/unrec_error.min | bin/./lexer-unrec_error > output/unrec_error.out

lexer-unrec_error: flex-unrec_error
	$(CC) $(CFLAGS) bin/lexer-unrec_error lex.yy.c $(LFLAGS)

flex-unrec_error:
	$(F) src/unrec_error.lex
	


# ===== Error Identifiers ===== #

iden_error.min: lexer-iden_error
	cat tests/iden_error.min | bin/./lexer-iden_error > output/iden_error.out

lexer-iden_error: flex-iden_error
	$(CC) $(CFLAGS) bin/lexer-iden_error lex.yy.c $(LFLAGS)

flex-iden_error:
	$(F) src/iden_error.lex

