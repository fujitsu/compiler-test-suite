#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int x=1,n,a=3,b,c,d;
  int y=110;
  int z=250;
  y=5;
  z=10;
  n=0;
  if(a!=10){
    b=10;
  }
  else {
    b=5;
  }
  while(n>=5){
    if(b!=10){
      x=y+z;
    }
    else {
      x=y-z;
    }
    n++;
  }
  y=3;
  z=2;
  printf("x=%d\n",x);
  if(a!=10){
    printf("**********  ok **********\n");
  }
  else {
    printf("  ng \n");
  }
exit (0);
}
