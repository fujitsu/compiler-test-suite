#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int z=50;
  int y=100;
  int b,x;
  unsigned int a;
    a=5;
    if(a!=5){
      x=y-z;
    }
    else {
      x=y+z;
    }
    y=1;
    z=2;
    printf("x=%d\n",x);
    if(x==150){
      printf("**********  ok **********\n");
    }
    else {
      printf("  ng \n");
    }
exit (0);
}
