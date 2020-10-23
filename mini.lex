/* Regexes */


%%

	/* 1) Comments */
	printf("COMMENT");

	/* 2) Keywords */
	printf("FUNCTION\n");
	printf("BEGIN_PARAMS\n");
	printf("END_PARAMS\n");
	printf("BEGIN_LOCALS\n");
	printf("END_LOCALS\n");
	printf("BEGIN_BODY\n");
	printf("END_BODY\n");
	printf("INTEGER\n");
	printf("ARRAY\n");
	printf("OF\n");
	printf("IF\n");
	printf("THEN\n");
	printf("ENDIF\n");
	printf("ELSE\n");
    printf("WHILE\n");
	printf("DO\n");
	printf("FOR\n");
	printf("BEGINLOOP\n");
	printf("ENDLOOP\n");
	printf("CONTINUE\n");
	printf("READ\n");
	printf("WRITE\n");
	printf("AND\n");
	printf("OR\n");
	printf("NOT\n");
	printf("TRUE\n");
	printf("FALSE\n");
	printf("RETURN\n");

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
";"	printf("SEMICOLON");
"("	printf("L_PAREN");
")"	printf("R_PAREN");
"["	printf("L_SQUARE_BRACKET");
"]"	printf("R_SQUARE_BRACKET");
":"	printf("COLON");
","	printf("COMMA");
		
	/* 6) Whitespace */
	printf("WHITESPACE");

%%

int main(){
	yylex();
}


