
#include <stdio.h>

short int n10 = 10;
short int a[10];
int main()
{
  short int i,sum=0;
  for(i=1;i<(n10+1);i++) {
    a[i-1] = i-1;
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
