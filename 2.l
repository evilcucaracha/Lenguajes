%option noyywrap
%{
int a;
%}

%%
[\t]+
is   {printf("%s : Es\n",yytext);}
am   {printf("%s : Soy\n",yytext);}
are  {printf("%s : Eres\n",yytext);}
was  {printf("%s : Era\n",yytext);}
were {printf("%s : Eran\n",yytext);}
wolf {printf("%s : Lobo\n",yytext);}
dog {printf("%s : Perro\n",yytext);}
cat {printf("%s : Gato\n",yytext);}
catfish {printf("%s : Pareja fea de internet\n",yytext);}
joke {printf("%s : Broma\n",yytext);}
[a-zA-Z]+ {printf("%s : Palabra no aceptada.\n", yytext);}
.|\n
%%
main(){
a=yylex();
}
