/* Regexes */

digit = [0-9]
float = {digit}*(\.)?{digit}+
alpha = [a-zA-Z]
whitespace [ \r\t\n]+

%%

/* 1) Comments */
	printf("COMMENT");

/* 2) Keywords */
function							printf("FUNCTION\n");
beginparam						printf("BEGIN_PARAMS\n");
endparams							printf("END_PARAMS\n");
beginlocals						printf("BEGIN_LOCALS\n");
endlocals							printf("END_LOCALS\n");
beginbody							printf("BEGIN_BODY\n");
endbody								printf("END_BODY\n");
integer								printf("INTEGER\n");
array								  printf("ARRAY\n");
of									  printf("OF\n");
if									  printf("IF\n");
then								  printf("THEN\n");
endif								  printf("ENDIF\n");
else								  printf("ELSE\n");
while								  printf("WHILE\n");
do									  printf("DO\n");
for									  printf("FOR\n");
beginloop							printf("BEGINLOOP\n");
endloop								printf("ENDLOOP\n");
continue							printf("CONTINUE\n");
read								  printf("READ\n");
write								  printf("WRITE\n");
and									  printf("AND\n");
or									  printf("OR\n");
not									  printf("NOT\n");
true								  printf("TRUE\n");
false								  printf("FALSE\n");
return								printf("RETURN\n");

/* 3) Identifiers and Integers */

	printf("IDENT ", yytext);
	printf("NUMBER ", yytext);

	/* 4) Operators */	
  
	-									  printf("SUB");
	\+								  printf("ADD");
	\*								  printf("MULT");
	\/								  printf("DIV");
	\%								  printf("MOD");	
	=								    printf("EQ");
	!=								  printf("NEQ");
	<=								  printf("LTE");
	>=								  printf("GTE");
	<								    printf("LT");
	>								    printf("GT");

	/* 5) Special Symbols */

	";"								printf("SEMICOLON");
	"("								printf("L_PAREN");
	")"								printf("R_PAREN");
	"["								printf("L_SQUARE_BRACKET");
	"]"								printf("R_SQUARE_BRACKET");
	":"								printf("COLON");
	","								printf("COMMA");
		
/* 6) Whitespace */

{whitespace}			printf("WHITESPACE");


%%

int main(){
	yylex();
}

