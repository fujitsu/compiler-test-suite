#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int a=2,x;
  char c[3]={'a','b','c'};
 
  char *b;
  int y=110;
  int z=250;
  y=5;
  z=5;
  b=&c[0];
  if(a!=2){
    c[0]='a';
  }
  if(*b!='c'){
    x=y+z;
  }
  else {
    x=y-z;
  }
  y=3;
  z=2;
  printf("x=%d  %c\n",x,*b);
  if(x>0){
    printf("**********  ok **********\n");
  }
  else {
    printf("  ng \n");
  }
exit (0);
}
