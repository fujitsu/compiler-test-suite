#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int func( int a );
  int a;
  a=20;
  if( a==20 && func(10) )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
 
int func( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}
