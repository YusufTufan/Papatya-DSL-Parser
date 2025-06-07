%{
    #include "papatya.tab.h"
    #undef yywrap
    int yywrap() { return 1; }
%}
%option noyywrap
%option yylineno
%%

"papatya"           { return PAPATYA; }
"draw_point"        { return DRAW_POINT; }
"line"              { return LINE; }
"from"              { return FROM; }
"to"                { return TO; }
"x"                 { return X; }
"y"                 { return Y; }

"="                 { return ESITTIR; }
","                 { return VIRGUL; }
"("                 { return PARANTEZ_AC; }
")"                 { return PARANTEZ_KAPA; }
";"                 { return NOKTALI_VIRGUL; }
"."                 { return NOKTA; }

[0-9]+              { yylval.num = atoi(yytext); return SAYI; }
[a-zA-Z_][a-zA-Z0-9_]*  { yylval.id = strdup(yytext); return ID; }

"--".*              { /* yorum satırı */ }
[ \t\n]+            { /* boşlukları yoksay */ }
.                   { return yytext[0]; }


%%