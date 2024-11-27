#include "stdio.h"

static void sub1(int *n);
int main(){
  int n = 100;
  sub1(&n);
}

static void sub1(int *n)
{
  int a[200],b[200];
  int c[200],d[200];
  int i;
  int m;

  for (i=0; i<200; i++) {
    a[i] = 0;
    b[i] = 1;
    c[i] = 0;
    d[i] = 1;
  }

  m = *n;

  for (i=0; i<100; i++) {
    a[i] = a[i+m] + b[i];
  }

  for (i=0; i<100; i++) {
    c[i] = c[i+m] + d[i];
  }

  if (a[99] == c[99]) {
    if (a[100] == 0) {
      printf("OK\n");
    } else {
      printf("NG\n");
    }
  } else {
    printf("NG\n");
  }
}

