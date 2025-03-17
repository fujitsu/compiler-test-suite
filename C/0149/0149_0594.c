#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f(a)
int a;
{
  int b;
  {
    int a=20;
    b=( a==20 );
  }
  if (a == 10 && b )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
}
int main()
{
  f(10);
exit (0);
}
