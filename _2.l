%{
#include <stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("This is valid identifier.");}
.*             {printf("This is not valid identifier.");}
%%
int yywrap(){
    return 1;
}
int main(){
    while(yylex());
    return 0;
}