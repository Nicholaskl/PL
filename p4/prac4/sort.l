%{
#include <stdio.h>
#include "sort.tab.h"
%}

%%
[1234567890]+   yylval=atoi(yytext); return NUMBER;
,               ;
\[              ;
\]              ;
\n              ;
[ \t]+          ;
%%
