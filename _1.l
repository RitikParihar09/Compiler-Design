%{
    #include <stdio.h>
    int lines=0,spaces=0,tabs=0,chars=0;
%}
%%
\n    {lines++;}
[ ]  {spaces++;}
\t    {tabs++;}
.     {chars++;}
%%
int yywrap(){
    return 1;
}
int main(){
    yylex();
    printf("Total lines: %d\n", lines);
    printf("Total spaces: %d\n", spaces);
    printf("Total tabs: %d\n", tabs);
    printf("Total characters: %d\n", chars);
    return 0;
}