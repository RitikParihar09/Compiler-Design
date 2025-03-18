%{
#include <stdio.h> 
int vowels = 0;
int consonants = 0;
%}

%%
[aeiouAEIOU]    { vowels++; }
[a-zA-Z]        { consonants++; }  // Only consonants reach here
.|\n            ;
%%

int main() {
    yylex();
    printf("Total number of Vowels are: %d\n", vowels);
    printf("Total number of Consonants are: %d\n", consonants);
    return 0;
}

int yywrap(){
    return 1;
}
