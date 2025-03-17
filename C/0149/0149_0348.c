#include <stdlib.h>
#include <stdio.h>
#include <math.h>
extern int a=10;
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
  if( a==10 )
   return 1;
  else
   return 0;
}
