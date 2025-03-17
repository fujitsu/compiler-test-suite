#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a;
extern int a=10;
int main()
{
  if( a==10 )
   printf("CATEGORY RECOV OK \n");
  else
   printf("CATEGORY RECOV NG = %d \n",a);
exit (0);
}
