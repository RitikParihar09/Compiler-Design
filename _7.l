%{
#include<stdio.h>
%}
%%
"//".* ;
"/*"([^*]|[*]+[^/])*[*]+"/" ;
. {fprintf(yyout,"%s",yytext);}

%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin,*yyout;
    yyin=fopen("in.c","r");
    yyout=fopen("out.c","w");
    yylex();
    return 0;
}
