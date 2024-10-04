#include<stdio.h>
int a=10;
int f();
int main()
{
  int a;
  a = 5;
  if( a==5 && f() )
   printf("\n");
}
int f()
{
  if( a==10 )
   return 1;
  else
   return 0;
}
