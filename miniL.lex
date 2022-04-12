   /* cs152-miniL phase1 */
   
%{   
   /* write your C code here for definitions of variables and including headers */
   int currLine = 1, currPos = 1;
%}

   /* some common rules */

   DIGIT [0-9];

%%
   /* specific lexer rules in regex */

   "function"              {printf("FUNCTION\n"); currPos += yyleng;}
   "beginparams"           {printf("BEGIN_PARAMS\n"); currPos += yyleng;}
   "endparams"             {printf("END_PARAMS\n"); currPos += yyleng;}
   "beginlocals"           {printf("BEGIN_LOCALS\n"); currPos += yyleng;}
   "endlocals"             {printf("END_LOCALS\n"); currPos += yyleng;}
   "beginbody"             {printf("BEGIN_BODY\n"); currPos += yyleng;}
   "endbody"               {printf("END_BODY\n"); currPos += yyleng;}
   "integer"               {printf("INTEGER\n"); currPos += yyleng;}
   "array"                 {printf("ARRAY\n"); currPos += yyleng;}
   "enum"                  {printf("ENUM\n"); currPos += yyleng;} 
   "of"                    {printf("OF\n"); currPos += yyleng;}
   "if"                    {printf("IF\n"); currPos += yyleng;}



   "=="                    {printf("EQ\n"); currPos += yyleng;}
   "<>"                    {printf("NEQ\n"); currPos += yyleng;}
   "<"                     {printf("LT\n"); currPos += yyleng;}
   ">"                     {printf("GT\n"); currPos += yyleng;}
   "<="                    {printf("LTE\n"); currPos += yyleng;}
   ">="                    {printf("GTE\n"); currPos += yyleng;}


   ";"                     {printf("SEMICOLON\n"); currPos += yyleng;}
   ":"                     {printf("COLON\n"); currPos += yyleng;}
   ","                     {printf("COMMA\n"); currPos += yyleng;}
   "("                     {printf("L_PAREN\n"); currPos += yyleng;}
   ")"                     {printf("R_PAREN\n"); currPos += yyleng;}
   "["                     {printf("L_SQUARE_BRACKET\n"); currPos += yyleng;}
   "]"                     {printf("R_SQUARE_BRACKET\n"); currPos += yyleng;}
   ":="                     {printf("ASSIGN\n"); currPos += yyleng;}


   


%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}


