#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  {
    int a;
    a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}
int main()
{
  extern int a;
  a = 2;
  if( a==2 && f() )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int a;
