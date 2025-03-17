#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  {
    static int a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}
int main()
{
  static int a;
  if( a==0 && f() )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
