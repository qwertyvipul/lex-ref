%{
	
%}

/*
	Define line
*/
line .*\n
comment \/\*(.*\n)*\*\/

%%
{comment} {
	printf("-- Comment Removed --");
}

{line} {
	printf("%s", yytext);
}
%%

int yywrap(){}
int main(){
	extern FILE *yyin;
	yyin = fopen("test.txt", "r");
	yylex();
	return 0;	
}

