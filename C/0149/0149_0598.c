#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f(a)
int a;
{
  if( a == 10 )
      return 1;
    else
      return 0;
}
 
static int a=20;
int main()
{
  if( a==20 && f(10) )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
