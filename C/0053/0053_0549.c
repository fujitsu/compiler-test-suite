#include<stdio.h>
int a;

int f1( a )
int a;
{
  if( a==20 )
   return 1;
  else
   return 0;
}
int f2( a )
int a;
{
  if( a==30 )
   return 1;
  else
   return 0;
}
int main()
{
  int x=20;
  int y=30;
  if( f1(x) && f2(y) && a==0 )
   printf("\n");
}
