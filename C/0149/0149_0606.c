#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f(a)
int a;
{
  int func( register int a );
  if ( a==10 && func(20) )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
}
int main()
{
  f(10);
exit (0);
}
 
int func(register int a)
{
  if ( a == 20 )
      return 1;
    else
      return 0;
}
