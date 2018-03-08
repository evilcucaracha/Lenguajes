%option noyywrap
%{
int a;
%}

%%
[\t]+
M  {printf("%s : Memory\n",yytext);}
[a-zA-Z]+ {printf("%s : No aceptada.\n", yytext);}
[0-9]+ {printf("%s : Numero\n",yytext);}
[.]  {printf("%s : Punto\n",yytext);}
[,]  {printf("%s : Coma\n",yytext);}
[+*-/=]   {printf("%s : Operador\n",yytext);}
%%
main(){
a=yylex();
}
