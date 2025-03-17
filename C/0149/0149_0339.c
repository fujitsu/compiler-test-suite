#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a[3]={10,10,10};
int main()
{
  extern int a[3];
  if( a[2]==10 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a[2]);
exit (0);
}
