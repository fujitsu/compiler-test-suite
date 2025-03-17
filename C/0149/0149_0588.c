#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  int func( register int a );
  if( func(10) )
      return 1;
    else
      return 0;
}
 
extern int a=20;
int main()
{
  if( a==20 && f() )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
 
int func( register int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}
