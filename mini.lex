/* Regexes */


%%

	/* 1) Comments */
	printf("COMMENT");

	/* 2) Keywords */
	printf("FUNCTION");
	printf("BEGIN_PARAMS");
	printf("END_PARAMS");
	printf("BEGIN_LOCALS");
	printf("END_LOCALS");
	printf("BEGIN_BODY");
	printf("END_BODY");
	printf("INTEGER");
	printf("ARRAY");
	printf("OF");
	printf("IF");
	printf("THEN");
	printf("ENDIF");
	printf("ELSE");
        printf("WHILE");
	printf("DO");
	printf("FOR");
	printf("BEGINLOOP");
	printf("ENDLOOP");
	printf("CONTINUE");
	printf("READ");
	printf("WRITE");
	printf("AND");
	printf("OR");
	printf("NOT");
	printf("TRUE");
	printf("FALSE");
	printf("RETURN");

	/* 3) Identifiers */

	/* 4) Operators */

	/* 5) Special Symbols */
	printf("SEMICOLON");
	printf("COLON");
	printf("COMMA");
	printf("L_PAREN");
	printf("R_PAREN");
	printf("L_SQUARE_BRACKET");
	printf("R_SQUARE_BRACKET");
		
	/* 6) Whitespace */
	printf("WHITESPACE");

%%

int main(){
	yylex();
}


