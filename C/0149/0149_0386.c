#include <stdlib.h>
#include <stdio.h>
#include <math.h>
extern int a;
int a;
int f();
int main()
{
  a = 10;
  if( f() )
   printf("CATEGORY TEST OK \n");
  else
   printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int f()
{
  if( a==10 )
   return 1;
  else
   return 0;
}
