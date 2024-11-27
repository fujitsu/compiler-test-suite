#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int a=0,b,x;
  int y=110;
  int z=250;
  y=5;
  z=10;
  if(a!=2){
    b=3;
  }
  if(10!=b){
    x=y+z;
  }
  else {
    x=y-z;
  }
  y=3;
  z=2;
  printf("x=%d\n",x);
  if(x>=0){
    printf("**********  ok **********\n");
  }
  else {
    printf("  ng \n");
  }
exit (0);
}
