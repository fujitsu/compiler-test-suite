#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int a=50;
  int b=1;
  int y=5;
  int z=10;
  int e=1000;
  int f=5000;
  int x,d;
    if(a==100){
      d=e+f;
      if(b==2){
        x=y+z;
      }
    }
    else {
      d=e-f;
      if(b!=2){
        x=y-z;
      }
    }
    z=1;
    y=2;
    e=1;
    f=2;
    printf("x=%d d=%d \n",x,d);
    if((d<0)&&(x<0)){
      printf("**********  ok **********\n");
    }
    else {
      printf("  ng \n");
    }
exit (0);
}
