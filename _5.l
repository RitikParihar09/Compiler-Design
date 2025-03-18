%{
#include<stdio.h>
int totChars=0,whiteSpace=0,wordCount=0;
%}
%%
[ \n\t] {whiteSpace++;}
[^ \n\t]+ {wordCount++;totChars=totChars+yyleng;}
%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin;
    yyin=fopen("input.txt","r");
    yylex();
    printf("The number of total characters in the given input file is: %d\n",totChars+whiteSpace);
    printf("The number of total words in the given input file is: %d\n",wordCount);
    printf("The number of total white spaces in the given input: %d\n",whiteSpace);
    return 0;
}
