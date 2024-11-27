#include "stdio.h"

static void sub1(int m);
int main(){
  sub1(100);
}

static void sub1(int m)
{
  int a[100],b[100];
  int i;

  for (i=0; i<100; i++) {
    a[i] = 0;
    b[i] = 1;
  }

  for (i=0; i<(m/2); i++) {
    a[i] = a[i+m/2] + b[i];
  }

  if (a[49] == 1) {
    if (a[50] == 0) {
      printf("OK\n");
    } else {
      printf("NG\n");
    }
  } else {
    printf("NG\n");
  }
}
