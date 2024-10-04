#include<stdio.h>
int f()
{
  int a=10;
  if( a==10 )
   return 1;
  else
   return 0;
}

extern int a;
int main()
{
  if( a==5 && f() )
    printf("\n");
}
int a=5;
