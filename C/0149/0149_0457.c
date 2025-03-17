#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  extern int a;
  a=10;
  if( a==10 )
   return 1;
  else
   return 0;
}
 
int a;
int main()
{
  if( f() && a==10 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
