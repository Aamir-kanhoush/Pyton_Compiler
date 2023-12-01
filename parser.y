%{
#include <stdio.h>
#include <stdlib.h> // Include this for free
#include <string.h> // Include this for strdup and strlen
extern int yylex();
void yyerror(const char *s);

typedef struct {
 char* name;
 int value;
} symbol;

symbol symtab[100]; // Symbol table
int symtab_next = 0; // Next free slot in symbol table

int lookup(char* name);
void insert(char* name, int value);
%}

%token NUMBER STRING OPERATOR IDENTIFIER LPAREN RPAREN NEWLINE RETURN ASSIGN PRINT T_PLUS

%%

int lookup(char* name) {
 for (int i = 0; i < symtab_next; i++) {
  if (strcmp(symtab[i].name, name) == 0) {
    return symtab[i].value;
  }
 }
 return -1; // Not found
}

void insert(char* name, int value) {
 int i = lookup(name);
 if (i == -1) { // Not already in table
  symtab[symtab_next].name = strdup(name);
  symtab[symtab_next].value = value;
  symtab_next++;
 } else { // Already in table
  symtab[i].value = value;
 }
}

stmts:
     /* empty */
     | stmts IDENTIFIER ASSIGN expr NEWLINE { insert($2, $4); }
     | stmts PRINT '(' expr ')' NEWLINE { printf("%s\n", $4); }
     | stmts stmt NEWLINE
     | stmts error NEWLINE
     | stmts RETURN expr NEWLINE
     | stmts RETURN NEWLINE
     ;

expr: NUMBER              { printf("vvv"); }
   | STRING              { printf("%s\n", $1); free($1); $$ = 0; }
   | expr '+' expr       { printf("%s\n", $1); free($1); $$ = 0; }
   | expr '-' expr       { $$ = $1 - $3; }
   | expr '*' expr       { $$ = $1 * $3; }
   | expr '/' expr       { $$ = $1 / $3; }
   | '(' expr ')'        { $$ = $2; }
   ;

%%
void yyerror(const char *s) {
 fprintf(stderr, "Error: %s\n", s);
}

int main() {
 yyparse();
 return 0;
}
