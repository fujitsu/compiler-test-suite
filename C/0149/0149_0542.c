#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  {
    extern int a;
    extern int a;
    if( a==10 )
        printf("CATEGORY TEST OK \n");
      else
        printf("CATEGORY TEST NG = %d \n",a);
  }
exit (0);
}
 
int a = 10;
