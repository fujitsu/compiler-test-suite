
#include <stdio.h>

int n10 = 10;
int a[10];
int ix[10] = {0,1,2,3,4,5,6,7,8,9};
int main()
{
  int i,sum=0;
  int *p = ix;
  for(i=0;i<n10;i++) {
    a[*p] = i;
    p ++;
  }
  for(i=0;i<n10;i++) {
    sum=sum+a[i];
  }
  if( sum == 45 ) {
     puts("OK");
  }
  else {
     puts("NG");
  }
}
