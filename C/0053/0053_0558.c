#include<stdio.h>
static int a;
int f();
int main()
{
  int a=5;
  if( a==5 && f() )
   printf("\n");
}
int f()
{
  if( a==0 )
   return 1;
  else
   return 0;
}
