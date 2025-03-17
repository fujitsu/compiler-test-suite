#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a;
int f();
int main()
{
  int a=5;
  if( a==5 && f() )
   printf("CATEGORY TEST OK \n");
  else
   printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int f()
{
  if( a==0 )
   return 1;
  else
   return 0;
}
