%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"if"|"else"|"return"|"string"|"printf"  { printf("KEYWORD: %s\n", yytext); }

\"[^\"]*\"       { printf("STRING: %s\n", yytext); }

'[^']*'          { printf("LITERAL: %s\n", yytext); }

[0-9]+           { printf("CONSTANT: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("IDENTIFIER: %s\n", yytext);
}

[ \t\n]+         { /* Ignore whitespace */ }

.                { printf("UNKNOWN: %s\n", yytext); }

%%
int yywrap() {
    return 1;
}
int main() {
    yylex();
    return 0;
}
