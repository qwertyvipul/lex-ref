%{
	
%}

%%
[0-9] {
	printf("%s", yytext);
}
. {
	
}
\n {return 0;}
%%

int yywrap(){}
int main(){
	yylex();
	printf("\n");
	return 0;
}
