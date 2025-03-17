#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  extern int a;
  a += 10;
  if( a==30 )
   return 1;
  else
   return 0;
}
 
extern int a;
int main()
{
  int  c;
  a += 10;
  if(c=f() && a==30 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
int a=10;
