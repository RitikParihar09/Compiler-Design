%{
#include <stdio.h>
%}
%%
[0-9]+[.][0-9]+     { printf("This is a Floating Point Number.\n"); }
[0-9]+              { printf("This is an Integer Number.\n"); }
.*                  { printf("This is not a Valid Number.\n"); }
%%
int yywrap(){
    return 1;
}
int main(){
    while(yylex());
    return 0;
}