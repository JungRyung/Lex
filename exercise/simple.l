%{
    #include <stdio.h>
    int lineNum;
%}
line 	^.*\n
%%
{line}       { printf("%6d: %s", ++lineNum, yytext); }
%%
int main() {
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}