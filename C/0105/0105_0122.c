#include "stdio.h"

static void sub1(int n);
int main()
{
  sub1(100);
  printf("OK\n");
}

static void sub1(int n)
{
  float a[100],b[100],c[100];
  int i;
  float isum=0.0;
  float jsum=0.0;
  for (i=0; i<100; i++) {
    a[i] = 1.0;
    b[i] = 0.0;
    c[i] = 2.0;
  }

  for (i=0; i<n; i++) {
    isum = isum + a[i];
  }

  for (i=0; i<n; i++) {
    b[5] = b[5] * a[i];
  }

  for (i=0; i<n; i++) {
    jsum = jsum + a[i] * c[i];
  }
}
