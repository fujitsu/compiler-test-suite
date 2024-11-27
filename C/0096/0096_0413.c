#include  <stdio.h>

int main()
{
  int a,b,z,i,sum;
  static int y[30]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,
20,21,22,23,24,25,26,27,28,29,30};
  b=5;
  a=20;
  i=0;
  sum=0;
  while(a>i){
    z=y[i];
    z+=b;
    sum+=z;
    i++;
  }
  if(sum==310){
    printf("  ok  \n");
  }
  else {
    printf("  ng  \n");
  }
}
