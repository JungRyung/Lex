%{
	#include <stdlib.h>
	int lcnt = 1;
%}
%%
[a-zA-Z]*	{ ECHO; ECHO; }
%%
int main(){
	yylex();
	return 0;
}
int yywrap(){
	return 1;
}
