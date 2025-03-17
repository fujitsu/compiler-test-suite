#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int a;
int f();
int main()
{
  static int a=20;
  if( a==20 && f() )
   printf("CATEGORY TEST OK \n");
  else
   printf("CATEGORY TEST NG \n");
exit (0);
}
int f()
{
  if( a==0 )
   return 1;
  else
   return 0;
}
