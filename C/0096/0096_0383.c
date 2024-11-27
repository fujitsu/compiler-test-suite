#include  <stdio.h>

int main()
{
  int a,b,c,d,e,f,flag;
  c=25;
  a=10;
  b=3;
  c=35;
  a=5;
  d=100;
  d=200;
  e=300;
  e=400;
  f=60;
  f=80;
  flag=0;
  if(a!=c){
    flag=1;
  }
  if(b<=b){
    if(c>=a){
    b=e;
    flag++;
    }
  }
  if(b==b){
    b=f;
    flag++;
  }
  a=2000;
  b=5000;
  c=10000;
  d=100;
  e=300;
  f=60;
  if(flag==3){
    printf("*****  ok  *****\n");
  }
  else {
    printf("*****  ng  *****\n");
  }
}
