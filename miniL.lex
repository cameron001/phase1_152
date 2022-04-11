   /* cs152-miniL phase1 */
   
%{   
   /* write your C code here for definitions of variables and including headers */
   int currLine = 1, currPos = 1;
%}

   /* some common rules */

   DIGIT [0-9]

%%
   /* specific lexer rules in regex */
   /* reserved words */

   "then"                  {printf("THEN\n"); currPos += yyleng;}
   "endif"                 {printf("ENDIF\n"); currPos += yyleng;}
   "else"                  {printf("ELSE\n"); currPos += yyleng;}
   "for"                   {printf("FOR\n"); currPos += yyleng;}
   "while"                 {printf("WHILE\n"); currPos += yyleng;}
   "do"                    {printf("DO\n"); currPos += yyleng;}
   "beginloop"             {printf("BEGINLOOP\n"); currPos += yyleng;}
   "endloop"               {printf("ENDLOOP\n"); currPos += yyleng;}
   "continue"              {printf("CONTINUE\n"); currPos += yyleng;}
   "read"                  {printf("READ\n"); currPos += yyleng;} 
   "write"                 {printf("WRITE\n"); currPos += yyleng;}
   "and"                   {printf("AND\n"); currPos += yyleng;}
   "or"                    {printf("OR\n"); currPos += yyleng;}
   "not"                   {printf("NOT\n"); currPos += yyleng;} 
   "true"                  {printf("TRUE\n"); currPos += yyleng;}
   "false"                 {printf("FALSE\n"); currPos += yyleng;}
   "return"                {printf("RETURN\n"); currPos += yyleng;}

   /* ARITHMETIC */
   "-"            {printf("SUB\n"); currPos += yyleng;}
   "+"            {printf("ADD\n"); currPos += yyleng;}
   "*"            {printf("MULT\n"); currPos += yyleng;}
   "/"            {printf("DIV\n"); currPos += yyleng;}
   "%"            {printf("MOD\n"); currPos += yyleng;}

   
%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}
