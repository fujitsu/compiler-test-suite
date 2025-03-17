#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  {
    static int a;
    if( a==0 )
        return 1;
      else
        return 0;
  }
}
 
int a=20;
int main()
{
  if( a==20 && f() )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
