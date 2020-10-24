/*Special keyword */


%%

/* 5) Special Symbols */

;								printf("SEMICOLON");
(								printf("L_PAREN");
)								printf("R_PAREN");
[								printf("L_SQUARE_BRACKET");
]								printf("R_SQUARE_BRACKET");
:								printf("COLON");
,								printf("COMMA");

%%

int main(){
	yylex();
}