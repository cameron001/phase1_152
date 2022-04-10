   /* cs152-miniL phase1 */
   
%{   
   /* write your C code here for definitions of variables and including headers */
   int currLine = 1, currPos = 1;
%}

   /* some common rules */

   DIGIT [0-9]

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
   


%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}


