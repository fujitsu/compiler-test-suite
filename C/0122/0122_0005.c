#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int sub( u )
     unsigned int u ;
{
  int i ;
  for (i=0;u>i*2;i++)
    printf("i = %d, u-i*2 = %d\n",i,u-i*2) ;
}
int main(){
  sub(1) ;
exit (0);
}
