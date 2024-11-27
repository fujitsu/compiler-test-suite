#include  <stdio.h>

int main()
{
  int flag=0;
  int a,b,c,d,e,f;
  a=10;
  a=15;
  d=30;
  d=5;
  if(a!=20){
    flag++;
  }
  if((a>5) ||(d<50)){
    a=b+f;
    flag++;
  }
  else {
    a=c+f;
    flag++;
  }
  if(flag==2){
    printf("*****   ok   *****\n",a);
  }
  else {
    printf("*****   ng   *****\n",a);
  }
  d=20;
  e=30;
  b=55;
  c=60;
  a=100;
  f=200;
}
