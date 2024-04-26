#include  <stdio.h>

struct loop {
    int i;
    char ch;
}savest,vast;

struct atag {
     int a;
     char ch;
     int b;
}ast;
int main()
{
   struct atag loopfunc();
   struct loop truefunc(struct atag *p);

   while(loopfunc().b < 10 )
        {
         savest.i += truefunc(&ast).i;
         }
    
   if(savest.i == 45)
       printf(" ** o   k **\n");
   else
       printf(" ** n   g ** i = %d\n",savest.i);
}

struct atag loopfunc()
{
   ast.b ++;
   return ast;
} 

struct loop truefunc(struct atag *p)
{ 
       vast.i = p->b;
       return vast;
}            
