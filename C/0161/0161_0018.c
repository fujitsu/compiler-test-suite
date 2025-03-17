#include <stdio.h>

int sub(int *a, int *d)
{
  int i,j,b=0;
  for (i=0; i<10000; i++) {
    if (a[i]!=d[i]) {
      j = 1;
    } else {
      j = -1;
    }
    b += j;
  }
  return b;
}

int main(void)
{
  int a[10000];
  int d[10000];
  int i;
  for (i=0; i<10000; i++) {
    a[i] = 0;
    d[i] = 1;
  }
  if (sub(a,d) == 10000) {
    printf("OK");
  } else {
    printf("NG");
  }
  return 0;
}
