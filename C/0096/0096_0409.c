#include  <stdio.h>

int main()
{
  int a,b,c,d,e,g;
  g=10;
  c=2;
  e=50;
  a=100;
  d=-10;
  if((g>=8)&&(c!=2)){
      d=a+e;
  }
  e=50;
  a=100;
  printf("%d\n",d);
  if(d<=0){
    printf("*********   ok  ********* \n");
  }
  else {
    printf("*********   ng  ********* \n");
  }
}
