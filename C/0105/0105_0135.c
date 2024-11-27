#include "stdio.h"

static void sub1(int m);
int main(){
  sub1(1);
}

static void sub1(int m)
{
  int a[10][100],b[10][100];
  int i,j;

  for (i=0; i<10; i++) {
    for (j=0; j<100; j++) {
      a[i][j] = 0;
      b[i][j] = 1;
    }
  }

  for (i=0; i<10; i++) {
    for (j=0; j<100; j++) {
      a[i][j*m] = a[i][j*m] + b[i][j];
    }
  }

  if (a[1][50] == 1) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
