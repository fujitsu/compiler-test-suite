
#include <stdio.h>

int n10 = 10;
int a[10];
int main()
{
  int i,sum=0;
  for(i=0;i<n10;i++) {
    a[i%10] = i;
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
