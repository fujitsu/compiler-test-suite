#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a=10;
int main()
{
  static int a;
  a = 20 ;
  if( a==20 )
   printf("CATEGORY TEST OK \n");
  else
   printf("CATEGORY TEST NG \n");
exit (0);
}
