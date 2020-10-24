
alpha 				[a-zA-Z]
digit					[0-9]
whitespace 		[ \r\t]

%{
	int currLine = 1;
	int currPos = 1;	
%}

%%

{digit}+[0-9a-zA-Z_]+			{	printf("Error	at line %d, column %d: identifier \"%s\" must begin with a letter", currLine, curPos, yytext); currPos += yyleng;}
_+[0-9a-zA-Z_]+						{ printf("Error at line %d, column %d: identifier \"%s\" must begin with a letter", currLine, curPos, yytext); currPos += yyleng;}
{alpha}+[0-9a-zA-Z_]*_		{ printf("Error at line %d, column %d: identifier \"%s\" cannot end with an underscore", currLine, curPos, yytext); currPos += yyleng;}
{alpha}+[0-9a-zA-Z_]*			{ printf("Identifier: %s\n", yytext);	currPos += yyleng;}
{digit}+									{	printf("Number: %d\n", yytext); currPos += yyleng;}

{whitespace}+							{currPos += yleng;}
\n												{ ++currLine;		currPos = 1;}

%%


int main(){
	yylex();
}
