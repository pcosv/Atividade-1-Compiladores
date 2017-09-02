%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
%public
%standalone
%class Minijava
%eofclose


integer = 0|[1-9][0-9]*
whitespace = [ |\n|\r|\t|\f]
identifier = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
commentLine = [/][/][^\n]*[\n]?
multiLineComment = "/*"~"*/"
andOperator = ["&&"]
lessThanOperator = ["<"]
assignmentOperator = ["="]
negationOperator = ["!"]
sumOperator = ["+"]
subOperator = ["-"]
multOperator = ["*"]
comparisonOperators = {assignmentOperator}{assignmentOperator}|{negationOperator}{assignmentOperator}
pontuation = [;|.|,|(|)|{|}|"["|"]"]

%%

/* Insira as regras léxicas abaixo */

"boolean" {System.out.println("Token BOOLEAN");}
"class" {System.out.println("Token CLASS");}
"public" {System.out.println("Token PUBLIC");}
"extends" {System.out.println("Token EXTENDS");}
"static" {System.out.println("Token STATIC");}
"void" {System.out.println("Token VOID");}
"main" {System.out.println("Token MAIN");}
"String" {System.out.println("Token STRING");}
"int" {System.out.println("Token INT");}
"while" {System.out.println("Token WHILE");}
"if" {System.out.println("Token IF");}
"else" {System.out.println("Token ELSE");}
"return" {System.out.println("Token RETURN");}
"length" {System.out.println("Token LENGTH");}
"true" {System.out.println("Token TRUE");}
"false" {System.out.println("Token FALSE");}
"this" {System.out.println("Token THIS");}
"new" {System.out.println("Token NEW");}
"System.out.println" {System.out.println("Token SYSTEMOUTPRINTLN");}
    
/* Insira as regras léxicas no espaço acima */     

{integer} {System.out.println("Token INTEIRO ("+yytext()+")");}
{whitespace} { }
{identifier} {System.out.println("Token IDENTIFICADOR ("+yytext()+")");}
{commentLine} {System.out.println("Token COMENTARIO DE UMA LINHA");}
{multiLineComment}	{System.out.println("Token COMENTARIO DE MULTIPLAS LINHAS");}
{andOperator} {System.out.println("Token OPERAÇAO AND ("+yytext()+")");}
{lessThanOperator} {System.out.println("Token MENOR QUE (<)");}
{assignmentOperator} {System.out.println("Token ATRIBUIÇAO ("+yytext()+")");}
{negationOperator} {System.out.println("Token NEGAÇAO ("+yytext()+")");}
{sumOperator} { System.out.println("Token SOMA ("+yytext()+")");}
{subOperator} { System.out.println("Token SUBTRAÇAO ("+yytext()+")");}
{multOperator} { System.out.println("Token MULTIPLICAÇAO ("+yytext()+")");}
{comparisonOperators} {System.out.println("Token COMPARAÇAO ("+yytext()+")");}
{pontuation} {System.out.println("Token PONTUAÇAO ("+yytext()+")");}

. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
