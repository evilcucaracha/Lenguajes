%option noyywrap
%{
int a;
%}

%%
[\t]+
[0-9]+ {printf("258 = %s\n",yytext);}
[+]   {printf("259\n");}
[-]   {printf("260\n");}
[*]   {printf("261\n");}
[/]   {printf("262\n");}
[|]   {printf("263\n");}
[\n]   {printf("264 fin de linea\n");}
[°!"#$%&=¡] {printf("%s = token no reconocible\n",yytext);}
%%
main(){
a=yylex();
}
