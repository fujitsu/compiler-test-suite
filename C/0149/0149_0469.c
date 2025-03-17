#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  register int a;
  a = 20;
  if( a==20 )
   return 1;
  else
   return 0;
}
 
extern int a;
int main()
{
  if( f() && a==10 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int a=10;
