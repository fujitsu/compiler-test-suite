#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  extern int a;
  {
    extern int a;
    a += 10;
  }
  if( a==20 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int a=10;
