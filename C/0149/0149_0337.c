#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a=10;
int main()
{
  char x=0;
  {
    static int a;
    a = 5;
    if( a==5 )
       x=1;
    else
       printf("CATEGORY TEST NG = %d \n",a);
  }
  if( a==10 && x==1 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
