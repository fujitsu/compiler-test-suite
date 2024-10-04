#include<stdio.h>
int main()
{
  static int a;
  int f( int a );
  a=10;
  if( f(a) )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int f( int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
