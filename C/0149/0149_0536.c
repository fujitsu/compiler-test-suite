#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  {
    extern int a;
    a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}
int main()
{
  static int a=20;
  if( a==20 && f() )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int a;
