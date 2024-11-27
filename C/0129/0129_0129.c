#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int x=1,n,a=10,d=2;
  int y=110;
  int z=250;
  struct person {
     char *name;
     int b;
  }c;
  y=5;
  z=10;
  n=0;
  if(a!=10){
    x=y+z;
    c.b=d;
  }
  while(n>=5){
    if(c.b!=10){
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
  if(x >= 0){
    printf("**********  ok **********\n");
  }
  else {
    printf("  ng \n");
  }
exit (0);
}
