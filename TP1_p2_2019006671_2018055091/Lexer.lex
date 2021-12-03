/*=========================================================
 * Integrante 1: Filipe Rodrigues Batista de Oliveira - 2018055091
 * Integrante 2: Heitor Damasceno - 2019006671
 * ========================================================*/

import java_cup.runtime.Symbol;
%%
%public
%class Lexer
%cup

%%
[/][*].*[*][/] { /*System.out.println("<comentario,"+yytext()+">");*/}

"array" { /*/*System.out.println("<keyword,array>");*/return new Symbol(Sym.ARRAY);}
"if" { /*/*System.out.println("<keyword,if>");*/return new Symbol(Sym.IF);}
"then" { /*System.out.println("<keyword,then>");*/ return new Symbol(Sym.THEN);}
"else" { /*System.out.println("<keyword,else>");*/ return new Symbol(Sym.ELSE);}
"while" { /*System.out.println("<keyword,while>");*/ return new Symbol(Sym.WHILE);}
"for" { /*System.out.println("<keyword,for>");*/ return new Symbol(Sym.FOR);}
"to" { /*System.out.println("<keyword,to>");*/ return new Symbol(Sym.TO);}
"do" { /*System.out.println("<keyword,do>");*/ return new Symbol(Sym.DO);}
"let" { /*System.out.println("<keyword,let>");*/ return new Symbol(Sym.LET);}
"in" { /*System.out.println("<keyword,in>");*/ return new Symbol(Sym.IN);}
"end" { /*System.out.println("<keyword,end>");*/ return new Symbol(Sym.END);}
"of" { /*System.out.println("<keyword,of>");*/ return new Symbol(Sym.OF);}
"break" { /*System.out.println("<keyword,break>");*/ return new Symbol(Sym.BREAK);}
"nil" { /*System.out.println("<keyword,nil>");*/ return new Symbol(Sym.NIL);}
"function" { /*System.out.println("<keyword,function>");*/ return new Symbol(Sym.FUNCTION);}
"var" { /*System.out.println("<keyword,var>");*/ return new Symbol(Sym.VAR);}
"type" { /*System.out.println("<keyword,type>");*/ return new Symbol(Sym.TYPE);}
"import" { /*System.out.println("<keyword,import>");*/ return new Symbol(Sym.IMPORT);}
"primitive" { /*System.out.println("<keyword,primitive>");*/ return new Symbol(Sym.PRIMITIVE);}

"class" { /*System.out.println("<keyword,class>");*/ return new Symbol(Sym.CLASS);}
"extends" { /*System.out.println("<keyword,extends>");*/ return new Symbol(Sym.EXTENDS);}
"method" { /*System.out.println("<keyword,method>");*/ return new Symbol(Sym.METHOD);}
"new" { /*System.out.println("<keyword,new>");*/ return new Symbol(Sym.NEW);}

"+" { /*System.out.println("<mais,+>");*/ return new Symbol(Sym.MAIS);}
"-" { /*System.out.println("<menos,->");*/ return new Symbol(Sym.MENOS);}
"*" { /*System.out.println("<mult,*>");*/ return new Symbol(Sym.MULT);}
"/" { /*System.out.println("<div,/>");*/ return new Symbol(Sym.DIV);}
"=" { /*System.out.println("<igual,=>");*/ return new Symbol(Sym.IGUAL);}
"<>" { /*System.out.println("<dif,<>>");*/ return new Symbol(Sym.DIF);}
">" { /*System.out.println("<maior,>>");*/ return new Symbol(Sym.MAIOR);}
"<" { /*System.out.println("<menor,<>");*/ return new Symbol(Sym.MENOR);}
">=" { /*System.out.println("<maiorigual,>=>");*/ return new Symbol(Sym.MAIORIGUAL);}
"<=" { /*System.out.println("<menorigual,<=>");*/ return new Symbol(Sym.MENORIGUAL);}
"&" { /*System.out.println("<and,&>");*/ return new Symbol(Sym.AND);}
"|" { /*System.out.println("<or,|>");*/ return new Symbol(Sym.OR);}
"\\" { /*System.out.println("<barra,\\>");*/ return new Symbol(Sym.BARRA);}
":=" { /*System.out.println("<atrib,:=>");*/ return new Symbol(Sym.ATRIB);}


"," { /*System.out.println("<virgula,,>");*/ return new Symbol(Sym.VIRGULA);}
":" { /*System.out.println("<dpontos,:>");*/ return new Symbol(Sym.DPONTOS);}
";" { /*System.out.println("<pvirgula,;>");*/ return new Symbol(Sym.PVIRGULA);}
"." { /*System.out.println("<ponto,.>");*/ return new Symbol(Sym.PONTO);}
"(" { /*System.out.println("<apar,(>");*/ return new Symbol(Sym.APAR);}
")" { /*System.out.println("<fpar,)>");*/ return new Symbol(Sym.FPAR);}
"[" { /*System.out.println("<acol,[>");*/ return new Symbol(Sym.ACOL);}
"]" { /*System.out.println("<fcol,]>");*/ return new Symbol(Sym.FCOL);}
"{" { /*System.out.println("<acha,{>");*/ return new Symbol(Sym.ACHA);}
"}" { /*System.out.println("<fcha,}>");*/ return new Symbol(Sym.FCHA);}

[a-zA-Z][a-zA-Z0-9_]* { /*System.out.println("<id,"+yytext()+">");*/ return new Symbol(Sym.ID);}
0|[1-9][0-9]* { /*System.out.println("<inteiro,"+yytext()+">");*/ return new Symbol(Sym.INTEIRO);}
\"(\\.|[^\"\\])*\"	{ /*System.out.println("<string,"+yytext()+">");*/ return new Symbol(Sym.STRING); }

\n\r|\r\n|\r|\n { /*System.out.println("<eof,newline>");*/}

" "|\t {}

<<EOF>> { return new Symbol( Sym.EOF ); }

. { throw new RuntimeException("Caractere inválido " + yytext());}
