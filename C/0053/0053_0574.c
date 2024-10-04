#include<stdio.h>
extern int a;
int a=10;
int f();
int main()
{
  a+=10;
  if( f() )
   printf("\n");
}
int f()
{
  if( a==20 )
   return 1;
  else
   return 0;
}
