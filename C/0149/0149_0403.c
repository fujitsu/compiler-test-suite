#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int a=10;
  int i=0;
  {
    int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("CATEGORY TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
