#include <stdlib.h>
#include <stdio.h>
#include <math.h>
extern int a;
int main()
{
  int a=3;
  char x=0;
  {
    int a=5;
    if( a==5 )
       x=1;
    else
       printf("CATEGORY TEST NG = %d \n",a);
  }
  if( a==3 && x==1 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
