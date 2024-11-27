#include "stdio.h"

static void sub1(int n);
int main(){
  sub1(100);
  printf("OK\n");
}

static void sub1(int n)
{
  double a[100],b[100];
  int i;
  double max1 = 0.0;

  for (i=0; i<100; i++) {
    a[i] = i * 1.1;
    b[i] = 0.0;
  }

  for (i=0; i<n; i++) {
    if (max1 < a[i]) {
      max1 = a[i];
    }
  }

  for (i=0; i<n; i++) {
    if (b[5] < a[i]) {
      b[5] = a[i];
    }
  }
}
