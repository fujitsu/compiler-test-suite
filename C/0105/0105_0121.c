#include "stdio.h"

static void sub1(int n);
int main()
{
  sub1(100);
  printf("OK\n");
}

static void sub1(int n)
{
  int a[100],b[100],c[100];
  int i;
  int isum=0;
  int jsum=0;
  for (i=0; i<100; i++) {
    a[i] = 1;
    b[i] = 0;
    c[i] = 2;
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
