#include "stdio.h"
int main()
{
  int a[100],b[100];
  int i;
  int max1 = 0;
  int max2 = 0;
  int x = 0;

  for (i=0; i<100; i++) {
    a[i] = i;
    b[i] = 0;
  }
  a[50] = 99;

  for (i=0; i<100; i++) {
    if (max1 <= a[i]) {
      max1 = a[i];
    }
  }

  for (i=0; i<100; i++) {
    if (b[5] <= a[i]) {
      b[5] = a[i];
    }
  }

  for (i=0; i<100; i++) {
    x = a[i] - max2;
    if (x > 0) {
      max2 = a[i];
    }
  }
  printf ("OK\n");
}
