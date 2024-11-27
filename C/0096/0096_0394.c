#include  <stdio.h>

int main()
{
  int a,x;
  char c[3];
  char *b=c;
  int y=110;
  int z=250;
  y=5;
  z=5;
  a=10;
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
    printf("??????????  ng ??????????\n");
  }
}
