#include "stdio.h"

static void sub1(int m);
int main(){
  sub1(100);
}

static void sub1(int m)
{
  int a[200],b[200];
  int i;

  for (i=0; i<200; i++) {
    a[i] = 0;
    b[i] = 1;
  }

  for (i=99; i>=0; i--) {
    a[i] = a[i+m] + b[i];
  }

  if (a[99] == 1) {
    if (a[100] == 0) {
      printf("OK\n");
    } else {
      printf("NG\n");
    }
  } else {
    printf("NG\n");
  }
}
