#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int z=100;
  int y=50;
  int a,x;
    a=269;
    x=10000;
    if(a<=15){
      x=y+z;
    }
    y=1;
    z=2;
    printf("x=%d\n",x);
    if(x==10000){
      printf("**********  ok **********\n");
    }
    else {
      printf("  ng \n");
    }
exit (0);
}
