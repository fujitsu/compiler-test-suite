#include<stdio.h>
int main()
{
  static int a=10;
  int f( int a );
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
