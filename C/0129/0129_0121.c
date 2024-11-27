#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int a=0,b=1,x;
  int y=5;
  int z=2;
  y=5000;
  z=250;
  if(a+b!=a+b){
    x=y+z;
  }
  else {
    x=y-z;
  }
  y=3;
  z=2;
  printf("x=%d\n",x);
  if(x==4750){
    printf("**********   ok ********** \n");
  }
  else {
    printf("   ng  \n");
  }
exit (0);
}
