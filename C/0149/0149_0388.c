#include <stdlib.h>
#include <stdio.h>
#include <math.h>
extern int a;
int main()
{
  int a;
  a = 5;
  if( a==5 )
   printf("CATEGORY TEST OK \n");
  else
   printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
