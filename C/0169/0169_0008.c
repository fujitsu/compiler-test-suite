#include <stdio.h>

typedef struct{char c;}SMC;
int arg_4_sub(char a, char b, char c, char d, char e, char f, char g, SMC cc);
int main()
{
  char a=1,b=2,c=3,d=4,e=5,f=6,g=7;
  SMC	cc;
  cc.c=11;
  arg_4_sub(a,b,c,d,e,f,g,cc);
}

int arg_4_sub(a,b,c,d,e,f,g,cc) 
     char a,b,c,d,e,f,g;
     SMC cc;
{
  printf("a\n",a);
  printf("cc.c=%d\n",cc.c);
} 

