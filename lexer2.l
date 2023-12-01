%{
#include "parser.tab.h"
extern int yylval;
%}

%%

"=" { return ASSIGN; }
"+" { return T_PLUS; }
"("            { return LPAREN; }
")"            { return RPAREN; }
"return"       { return RETURN; }
"print" { return PRINT; }
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[+\-*/()]   { return yytext[0]; }
\n           { return NEWLINE; }
.            { printf("Unexpected character %c\n", yytext[0]); }
[a-zA-Z_][a-zA-Z_0-9]* { yylval = strdup(yytext); return IDENTIFIER; }

\"([^\"\\]|\\n)*\" {
   char *p = yytext + 1; /* skip the initial quote */
   char *q = yylval = malloc(strlen(yytext) + 1);
   while (*p != '\"') {
       if (*p == '\\') {
           switch (*++p) {
           case 'n': *q++ = '\n'; break;
           /* handle other escape sequences as needed */
           }
       } else {
           *q++ = *p;
       }
       p++;
   }
   *q = '\0'; /* null-terminate the string */
   return STRING;
}

%%

int yywrap() {
   return 1;
}