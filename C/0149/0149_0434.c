#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int a;
  int f( int a );
  a=10;
  if( f(a) )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int f( int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
