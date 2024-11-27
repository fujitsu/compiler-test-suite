#include <stdio.h>


#define ANS 1
int main()
{
  int a[2];
  volatile int i=1,j=1,k=0;
  volatile int res;

  a[0] = 0;
  a[1] = 1;

  a[i] = a[i];
  a[i] = a[j];

  a[i+k] = a[i+k];
  a[i+k] = a[j+k];

  

  res = a[0] + a[1];

  if (res == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}
