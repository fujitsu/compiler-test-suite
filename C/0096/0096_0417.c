#include <string.h>
#include  <stdio.h>
int ser(int *x, int *y);

int main()
{
  static int b[10]={1,2,3,4,5,6,7,8,9,10};
  int a[10];
  int i,j;
  a[0]=2;
  a[1]=9;
  a[2]=1;
  a[3]=5;
  a[4]=6;
  a[5]=8;
  a[6]=4;
  a[7]=10;
  a[8]=3;
  a[9]=7;
  i=0;
  while(i<=9){
    j=i+1;
    while(j<=9){
      ser(&a[i],&a[j]);
      j++;
    }
    i++;
  }
  if(memcmp(a,b,40)==0)

       printf("ok\n");

  else printf("ng\n");
}
int ser(x,y)
int *x,*y;
{
  int demo;
    if(*x>*y){
      demo=*x;
      *x=*y;
      *y=demo;
    }
  return 0;
}
