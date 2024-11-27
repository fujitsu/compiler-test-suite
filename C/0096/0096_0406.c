#include  <stdio.h>

int main()
{
  int a,b,c,d,e,g;
  g=1;
  c=3;
  e=50;
  a=100;
  b=10;
  if((g>=8)&&(c!=2)){
      d=a+e;
    }
  else {
      d=b-e;
  }
  e=50;
  a=100;
  b=10;
  printf("%d\n",d);
  if(d<=0){
    printf("*********   ok  ********* \n");
  }
  else {
    printf("*********   ng  ********* \n");
  }
}
