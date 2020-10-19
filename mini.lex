/* Regexes */


%%

	/* 1) Comments */
	printf("COMMENT");

	/* 2) Keywords */

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


