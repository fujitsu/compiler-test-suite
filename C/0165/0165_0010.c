
#include <stdio.h>

int n10 = 10;
int a[10];
int main()
{
  float i;
  int sum=0;
  for(i=0;i<n10;i++) {
    a[(int )i] = i;
  }
  for(i=0;i<n10;i++) {
    sum=sum+a[(int )i];
  }
  if( sum == 45 ) {
     puts("OK");
  }
  else {
     puts("NG");
  }
}
