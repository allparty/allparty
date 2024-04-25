%{
	/* Definition section*/
	#include "y.tab.h"
	extern int yylval;
%}
%%
[0-9]+ {
          yylval=atoi(yytext);
          return NUMBER;

       }






































[a-zA-Z]+ { return ID; }
[\t] ;

\n { return 0; }
. { return yytext[0]; }
%%
int yywrap()
{
 return 1;
}







































/*
flex calc.l
bison -dy calc.y
gcc lex.yy.c y.tab.c -o calculator
./calculator
*/