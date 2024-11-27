#include "stdio.h"

static void sub1(int m);
int main(){
  sub1(1);
}

static void sub1(int m)
{
  int a[100],b[100];
  int i;

  for (i=0; i<100; i++) {
    a[i] = 0;
    b[i] = 1;
  }

  for (i=0; i<100; i++) {
    a[i*m] = a[i*m] + b[i];
  }

  if (a[50] == 1) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
