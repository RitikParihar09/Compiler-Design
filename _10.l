



%{
#include <stdio.h>
%}

%%
[0-9]*[02468]   { printf("%s is an EVEN number\n", yytext); }
[0-9]*[13579]   { printf("%s is an ODD number\n", yytext); }
\n              { /* Ignore new lines */ }
.               { printf("Invalid input: %s\n", yytext); }
%%

int yywrap() { return 1; }

int main() {
    printf("Enter numbers (Ctrl+D to exit):\n");
    yylex();
    return 0;
}

