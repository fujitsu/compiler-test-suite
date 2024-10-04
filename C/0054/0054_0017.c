#include<stdio.h>
int func1();
 

int main()
{
  printf("03 START\n");
  func1();
  printf("03 END  \n");
}

int func1(){
  int a=3,ar[1]={0};
  float fa=1.0,far[1]={0.0};
  ar[0]=2;
  far[0]=1.0;

  fa *= 1.0;
  far[0]/= fa ;
  a  %= 2;
  ar[a-1] <<=0;
  ar[0] >>=1;
  a  &= ar[0];
  a ^= a;
  a  |=1;
  if (a==1 && far[0]==1.0)
    printf("03 FUNC1 OK\n");
  else {
    printf("03 FUNC1 NG\n");
    printf("A=%d\n",a);
    printf("FAR[0]=%f\n",far[0]);
  }
}
