#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int a;
extern int a=10;
int main()
{
  if( a==10 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
