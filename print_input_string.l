%{
	
%}

%%
[.] {
	printf("%d", yytext);
}
\n {return 0;}
%%

int yywrap(){}
int main(){
	yylex();
	printf("\n");
	return 0;
}
