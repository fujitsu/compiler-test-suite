#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int x=10;
extern int *a;
int f();
int main()
{
  extern int *a;
  a = &x;
  if( f() )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",*a);
exit (0);
}
int f()
{
  if( *a==10 )
   return 1;
  else
   return 0;
}
int *a;
