# Lex
A quick basic reference for the Lex programming language.

## How To Compile And Execute
```bash
flex <file_name.l>
gcc lex.yy.c
./a.out
```

## First Program
This program will simply print the given input string.
```lex
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
```

## All Programs
1. [Print input string.](https://github.com/thevipulsharma/lex/blob/master/print_input_string.l)
2. [Print no. of capital letter in the given input string.](https://github.com/thevipulsharma/lex/blob/master/hello.l)
3. [Only print the digits from the given input string.](https://github.com/thevipulsharma/lex/blob/master/display_only_digits.l)
4. [Print file text with line numbers](https://github.com/thevipulsharma/lex/blob/master/print_file_linenums.l)
5. [Remove comments from file and write to the new content to a new file.](https://github.com/thevipulsharma/lex/blob/master/remove_file_comments.l)
