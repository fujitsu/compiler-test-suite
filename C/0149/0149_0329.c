#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a[2]={10,10};
int main()
{
  int a[2];
  {
    int a[2]={20,20};
    if( a[0]==20 )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a[0]);
  }
exit (0);
}
