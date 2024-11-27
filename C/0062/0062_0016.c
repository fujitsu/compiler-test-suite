
#include <stdio.h>
#include <math.h>
double a[10]={0,1,2,3,4,5,6,7,8,9};
double b[10]={0,1,2,3,4,5,6,7,8,9};
int main()
{
  int i,s;
  s = a[1];
  for(i=0;i<10;i++) {
    if (s > 0) {
      a[i] = b[i]+a[i];
    }else{
      a[i] = b[i]*a[i];
    }
  }
  printf("--end-- \n");
  printf("%g \n",a[3]);
}
