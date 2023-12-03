%{
 #include<stdio.h>   
 extern int yylex();
 extern int yylineno;

 void yyerror(char *s);
%}

%token Yield Nonlocal Global Num ID Semi Sub Add While If Rbrace Lbrace Rparen Lparen Equal Assign Float Int ADD Return Break Continue
%start start 


%%
start: statement ;
statement: exp  ;

exp: Num Semi{ printf("It's a number \n"); }
| ID Semi{ printf("It's a  String \n"); }
| Equal Semi{ printf("its equal state \n"); }
| Return  Semi{ printf("It's a return statement \n"); };    ;
| Break Semi{ printf("It's a break statement \n"); };    ;
| Continue Semi{ printf("It's a Continue statement \n"); };    ;
| Global Semi{ printf("It's a Global statement \n"); };    ;
| Nonlocal Semi{ printf("It's a Nonlocal statement \n"); };    ;
| Yield Semi{ printf("It's a Yield statement \n"); };    ;

%%

  

int main()
{
yyparse();
printf("\nparser is finished\n");
return 0;
}
void yyerror(char *s)
{
   fprintf(stderr,"error in line :%d - %s \n", yylineno, s);
}
 
