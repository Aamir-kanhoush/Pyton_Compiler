%option noyywrap
%option yylineno

%{
#include "parser.tab.h"


%}


digit [0-9]
letter [a-zA-Z]
id (_|{letter})({letter}|{digit})*
number {digit}+
ws [\t\n]
delim {ws}*

%%
"int" {return Int;}
"float" {return Float;}
"=" {return Assign;}
"==" {return Equal;}
"(" {return Lparen;}
")" {return Rparen;}
"{" {return Lbrace;}
"}" {return Rbrace;}
"if" {return If;}
"while" {return While;}
"+" {return Add;}
"-" {return Sub;}
";" {return Semi;}
"return" {return Return;}
"break" {return Break;}
"continue" {return Continue;}
"global"  {return Global;}
"nonlocal" {return Nonlocal;}
"yield" {return Yield;}



{id} {return ID;}
{number} {return Num;}
{delim} {}
%%
