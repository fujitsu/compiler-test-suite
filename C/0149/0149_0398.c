#include <stdlib.h>
#include <stdio.h>
#include <math.h>
extern int a[3];
extern int a[3]={1,2,3};
int f();
int main()
{
  a[2]=10;
  if( f() )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a[2]);
exit (0);
}
int f()
{
  if( a[2]==10 )
   return 1;
  else
   return 0;
}
