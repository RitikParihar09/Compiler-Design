%{
#include <stdio.h>
%}
%%
int|float|return|long|main    { printf("%s is a keyword.\n",yytext); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("%s is a identifier.\n",yytext); }
[,;]    { printf("%s is a separator.\n",yytext); }
[=+\-\*/]    { printf("%s is a operator.\n",yytext); }
[0-9]+    { printf("%s is a Constant.\n",yytext); }
%%
int yywrap(){
    return 1;
}
int main(){
    while(yylex());
    return 0;
}