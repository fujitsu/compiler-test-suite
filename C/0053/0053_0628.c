#include<stdio.h>
int main()
{
  int a;
  int f( int a );
  a=10;
  if( f(a) )
    printf("\n");
}
int f( int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
