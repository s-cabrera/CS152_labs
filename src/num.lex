/* Regexes */

digit 			[0-9]
float				{digit}*\.?{digit}*
whitespace	[ \r\t\n]


%%

{float}												printf("NUM %s\n", yytext);
whitespace										;
.															printf("NON-NUM %s\n", yytext);

%%

int main(){
	yylex();
}
