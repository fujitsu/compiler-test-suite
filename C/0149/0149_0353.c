#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int x=10;
extern int *a=&x;
int main()
{
  extern int *a;
  if( *a==10 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",*a);
exit (0);
}
