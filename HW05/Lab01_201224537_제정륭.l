%{
    #include <stdio.h>
    int wordCount;
    int symbolCount;
%}
word 	[a-zA-Z]*
symbol  [\!\@\#\$\%\^\&\*\(\)\-\_\+\=\|\\\/\<\>\:\:\"\'\`\~\{\}\[\]\.]
%%
{word}		{ wordCount++; }
{symbol}	{ symbolCount++; }
[ ]* 		{;}
%%
int main() {
    yylex();
    	printf("Num. of Symbols:\t%d\nNum. of Words:\t\t%d\n", symbolCount, wordCount);
    return 0;
}
int yywrap() {
    return 1;
}