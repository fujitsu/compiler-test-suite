
#include <stdio.h>

int n10 = 10;
int a[10];
int zero = 0;
int main()
{
  int i,sum=0;
  for(i=0;i<(n10*2);i+=2) {
    a[zero+i/2] = i/2;
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
