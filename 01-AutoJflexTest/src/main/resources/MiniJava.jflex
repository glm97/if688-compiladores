package br.ufpe.cin.if688.jflex;

%%

/* N�o altere as configura��es a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class MiniJava
%eofclose

letter          = [A-Za-z]
digit           = [0-9]
integer         = [1-9]([0-9])*|[0]
id1             = \_|{letter}
id2             = \_|{letter}|{digit}
identifier      = {id1}({id2})*
whitespace      = [ \n\t\r\f]
line_comment    = \/\/[^\n\r]*
comment         = \/\*[\w\W]*\*\/ 

/* Insira as regras l�xicas abaixo */

%%

/**
 * REGRAS LEXICAS:
 */
 
/**
 * RESERVADOS:
 */
 
"boolean"            { System.out.println("token gerado foi um reservado: 'boolean' na linha: " + yyline + ", coluna: " + yycolumn); }
"class"              { System.out.println("token gerado foi um reservado: 'class' na linha: " + yyline + ", coluna: " + yycolumn); }
"public"             { System.out.println("token gerado foi um reservado: 'public' na linha: " + yyline + ", coluna: " + yycolumn); }
"extends"            { System.out.println("token gerado foi um reservado: 'extends' na linha: " + yyline + ", coluna: " + yycolumn); }
"static"             { System.out.println("token gerado foi um reservado: 'static' na linha: " + yyline + ", coluna: " + yycolumn); }
"void"               { System.out.println("token gerado foi um reservado: 'void' na linha: " + yyline + ", coluna: " + yycolumn); }
"main"               { System.out.println("token gerado foi um reservado: 'main' na linha: " + yyline + ", coluna: " + yycolumn); }
"String"             { System.out.println("token gerado foi um reservado: 'String' na linha: " + yyline + ", coluna: " + yycolumn); }
"int"                { System.out.println("token gerado foi um reservado: 'int' na linha: " + yyline + ", coluna: " + yycolumn); }
"while"              { System.out.println("token gerado foi um reservado: 'while' na linha: " + yyline + ", coluna: " + yycolumn); }
"if"                 { System.out.println("token gerado foi um reservado: 'if' na linha: " + yyline + ", coluna: " + yycolumn); }
"else"               { System.out.println("token gerado foi um reservado: 'else' na linha: " + yyline + ", coluna: " + yycolumn); }
"return"             { System.out.println("token gerado foi um reservado: 'return' na linha: " + yyline + ", coluna: " + yycolumn); }
"length"             { System.out.println("token gerado foi um reservado: 'length' na linha: " + yyline + ", coluna: " + yycolumn); }
"true"               { System.out.println("token gerado foi um reservado: 'true' na linha: " + yyline + ", coluna: " + yycolumn); }
"false"              { System.out.println("token gerado foi um reservado: 'false' na linha: " + yyline + ", coluna: " + yycolumn); }
"this"               { System.out.println("token gerado foi um reservado: 'this' na linha: " + yyline + ", coluna: " + yycolumn); }
"new"                { System.out.println("token gerado foi um reservado: 'new' na linha: " + yyline + ", coluna: " + yycolumn); }
"System.out.println" { System.out.println("token gerado foi um reservado: 'System.out.println' na linha: " + yyline + ", coluna: " + yycolumn); }


/**
 * OPERADORES:
 */
 
"&&"                 { System.out.println("token gerado foi um operador: '&&' na linha: " + yyline + ", coluna: " + yycolumn); }
"<"                  { System.out.println("token gerado foi um operador: '<' na linha: " + yyline + ", coluna: " + yycolumn); }
"=="                 { System.out.println("token gerado foi um operador: '==' na linha: " + yyline + ", coluna: " + yycolumn); }
"!="                 { System.out.println("token gerado foi um operador: '!=' na linha: " + yyline + ", coluna: " + yycolumn); }
"+"                  { System.out.println("token gerado foi um operador: '+' na linha: " + yyline + ", coluna: " + yycolumn); }
"-"                  { System.out.println("token gerado foi um operador: '-' na linha: " + yyline + ", coluna: " + yycolumn); }
"*"                  { System.out.println("token gerado foi um operador: '*' na linha: " + yyline + ", coluna: " + yycolumn); }
"!"                  { System.out.println("token gerado foi um operador: '!' na linha: " + yyline + ", coluna: " + yycolumn); }

/**
 * DELIMITADORES:
 */
 
";"                  { System.out.println("token gerado foi um delimitador: ';' na linha: " + yyline + ", coluna: " + yycolumn); }
"."                  { System.out.println("token gerado foi um delimitador: '.' na linha: " + yyline + ", coluna: " + yycolumn); }
","                  { System.out.println("token gerado foi um delimitador: ',' na linha: " + yyline + ", coluna: " + yycolumn); }
"="                  { System.out.println("token gerado foi um delimitador: '=' na linha: " + yyline + ", coluna: " + yycolumn); }
"("                  { System.out.println("token gerado foi um delimitador: '(' na linha: " + yyline + ", coluna: " + yycolumn); }
")"                  { System.out.println("token gerado foi um delimitador: ')' na linha: " + yyline + ", coluna: " + yycolumn); }
"{"                  { System.out.println("token gerado foi um delimitador: '{' na linha: " + yyline + ", coluna: " + yycolumn); }
"}"                  { System.out.println("token gerado foi um delimitador: '}' na linha: " + yyline + ", coluna: " + yycolumn); }
"["                  { System.out.println("token gerado foi um delimitador: '[' na linha: " + yyline + ", coluna: " + yycolumn); }
"]"                  { System.out.println("token gerado foi um delimitador: ']' na linha: " + yyline + ", coluna: " + yycolumn); }


{identifier}       { System.out.println("token gerado foi um id: '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
{integer}          { System.out.println("token gerado foi um integer: '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
{whitespace}       { /* Ignorar whitespace. */ }
{line_comment}     { /* Ignorar comentario. */ }
{comment}          { /* Ignorar comentario. */ }
    
/* Insira as regras l�xicas no espa�o acima */     
