%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();

%}

%union {
    int num;
    char* id;
}

%token <num> SAYI
%token <id> ID
%token PAPATYA DRAW_POINT LINE FROM TO X Y
%token ESITTIR VIRGUL PARANTEZ_AC PARANTEZ_KAPA NOKTALI_VIRGUL NOKTA

%start program

%%

program:
    program statement
    | /* boş */
    ;

statement:
    papatya_draw_point
    | papatya_line
    ;

papatya_draw_point:
    PAPATYA NOKTA DRAW_POINT PARANTEZ_AC X ESITTIR SAYI VIRGUL Y ESITTIR SAYI PARANTEZ_KAPA NOKTALI_VIRGUL
    {
        printf("Nokta çiz: (%d, %d)\n", $7, $11);
    }
    ;

papatya_line:
    PAPATYA NOKTA LINE PARANTEZ_AC FROM ESITTIR PARANTEZ_AC SAYI VIRGUL SAYI PARANTEZ_KAPA VIRGUL
    TO ESITTIR PARANTEZ_AC SAYI VIRGUL SAYI PARANTEZ_KAPA PARANTEZ_KAPA NOKTALI_VIRGUL
    {
        printf("Çizgi çiz: (%d, %d) -> (%d, %d)\n", $8, $10, $16, $18);
    }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Hata: %s\n", s);
}

int main(int argc, char **argv) {
    yyparse();
    return 0;
}