%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
//%class ScannerJF
//%implements Scanner
%eofclose
//%function Token 
//%type Token

%%

/* Insira as regras léxicas abaixo */

[\n\r\t\f]+ {}

    
/* Insira as regras léxicas no espaço acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
