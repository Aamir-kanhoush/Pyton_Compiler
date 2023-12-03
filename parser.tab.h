/* A Bison parser, made by GNU Bison 2.1.  */

/* Skeleton parser for Yacc-like parsing with Bison,
   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, when this file is copied by Bison into a
   Bison output file, you may use that output file without restriction.
   This special exception was added by the Free Software Foundation
   in version 1.24 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     Yield = 258,
     Nonlocal = 259,
     Global = 260,
     Num = 261,
     ID = 262,
     Semi = 263,
     Sub = 264,
     Add = 265,
     While = 266,
     If = 267,
     Rbrace = 268,
     Lbrace = 269,
     Rparen = 270,
     Lparen = 271,
     Equal = 272,
     Assign = 273,
     Float = 274,
     Int = 275,
     ADD = 276,
     Return = 277,
     Break = 278,
     Continue = 279
   };
#endif
/* Tokens.  */
#define Yield 258
#define Nonlocal 259
#define Global 260
#define Num 261
#define ID 262
#define Semi 263
#define Sub 264
#define Add 265
#define While 266
#define If 267
#define Rbrace 268
#define Lbrace 269
#define Rparen 270
#define Lparen 271
#define Equal 272
#define Assign 273
#define Float 274
#define Int 275
#define ADD 276
#define Return 277
#define Break 278
#define Continue 279




#if ! defined (YYSTYPE) && ! defined (YYSTYPE_IS_DECLARED)
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;



