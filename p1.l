%{
#include<stdio.h>
int lc=0,sc=0,tc=0,cc=0;
%}
%%
[\n] {lc++;}
[\t] {tc++;}
[ ] {sc++;}
. {cc++;}
%%
int yywrap()
{
return 1;
}
int main()
{
yylex();
printf("\n No. of lines are=%d\n",lc);
printf("\n No. of spaces are=%d\n",sc);
printf("\n No. of tabs are=%d\n",tc);
printf("\n No. of alphabets are=%d\n",cc);
return 0;
}
