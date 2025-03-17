#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int a=10;
  int i=0;
  {
    register int a=1;
    if( a==1 )
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
