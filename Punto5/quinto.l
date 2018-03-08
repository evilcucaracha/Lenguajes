%option noyywrap
%{
%}
%%

[\t ]+   /*Ignore whitespace*/ ;

[0-9]+ |
[0-9]+[.][0-9]+     {printf("%s: Real\n", yytext);}

[0-9]+[i] |
[0-9]+[ ][i]    {printf("%s: Imaginario\n", yytext);}

[0-9]+[+][0-9]+[i] |
[0-9]+[ ][+][ ][0-9]+[ ][i]  {printf("%s: Complejo\n", yytext);}


[a-zA-z]+ {printf("%s: intraducible, por ahora", yytext);}
.|\n  {ECHO; /* Normal default anyway */}

%%

main(){
  yylex();
}
