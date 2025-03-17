
#include <stdio.h>

int n10 = 10;
int a[20];
int main()
{
  int i,sum=0;
  for(i=0;i<n10;i++) {
    a[2*i] = i;
  }
  for(i=0;i<(n10*2);i+=2) {
    sum=sum+a[i];
  }
  if( sum == 45 ) {
     puts("OK");
  }
  else {
     puts("NG");
  }
}
