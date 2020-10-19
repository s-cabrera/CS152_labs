/* Regexes */


%%

	/* 1) Comments */
	printf("COMMENT");

	/* 2) Keywords */

	/* 3) Identifiers */

	/* 4) Operators */	
	printf("SUB");
	printf("ADD");
	printf("MULT");
	printf("DIV");
	printf("MOD");	
	printf("EQ");
	printf("NEQ");
	printf("LTE");
	printf("GTE");
	printf("LT");
	printf("GT");

	/* 5) Special Symbols */
	printf("SEMICOLON");
	printf("L_PAREN");
	printf("R_PAREN");
	printf("L_SQUARE_BRACKET");
	printf("R_SQUARE_BRACKET");
	printf("COLON");
	printf("COMMA");
		
	/* 6) Whitespace */
	printf("WHITESPACE");

%%

int main(){
	yylex();
}


