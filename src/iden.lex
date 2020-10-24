/* Regexes */
digit 			[0-9]
alpha 			[a-zA-Z]
iden_char		[0-9a-zA-Z_]
whitespace	[ \r\t\n]


%%

{alpha}+[0-9a-zA-Z_]* 				printf("IDEN %s\n", yytext);
whitespace										;
.															printf("NON-IDEN %s\n", yytext);

%%

int main(){
	yylex();
}
