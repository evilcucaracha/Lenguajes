%option noyywrap
%{
%}

%%
[\t ]+ ;
i |
I     {printf("%s: Yo\n", yytext);}
she |
She   {printf("%s: Ella\n", yytext);}
he |
He    {printf("%s: El\n", yytext);}
it |
It    {printf("%s: Eso\n", yytext);}
we |
We    {printf("%s: Nosotros\n", yytext);}
they |
They  {printf("%s: Ellos\n", yytext);}
you |
You   {printf("%s: Tu, usted\n", yytext);}
be |
yes   {printf("%s: Ser estar\n", yytext);}
our |
Our   {printf("%s: Nuestro\n", yytext);}
is   {printf("%s : Es\n",yytext);}
am   {printf("%s : Soy\n",yytext);}
are  {printf("%s : Eres\n",yytext);}
was  {printf("%s : Era\n",yytext);}
were {printf("%s : Eran\n",yytext);}
wolf {printf("%s : Lobo\n",yytext);}
dog {printf("%s : Perro\n",yytext);}
cat {printf("%s : Gato\n",yytext);}
joke {printf("%s : Broma\n",yytext);}
[a-zA-Z]+ {printf("%s : Palabra no aceptada.\n", yytext);}
.|\n
%%
main(){
yylex();
}
