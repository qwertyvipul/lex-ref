%{
	int linenum = 1;
%}

/*
	Define line
*/
line .*\n

%%
{line} {
	printf("%10d %s", linenum++, yytext);
}
%%

int yywrap(){}
int main(){
	extern FILE *yyin;
	yyin = fopen("test.txt", "r");
	yylex();
	return 0;	
}

