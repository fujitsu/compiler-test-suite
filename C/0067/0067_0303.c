#include <stdio.h>
#include <omp.h>

void sub01() {
  int i, i1, i2, i3, i4, n=2;
  i1 = 1;
  i2 = 1;
  i3 = 0;
  i4 = 0;
#pragma omp parallel for schedule(static,n) reduction(&&:i1,i2) reduction(||:i3,i4)
  for (i=1; i<=10; i+=1) {
    i1 = (i1 && 0);
    i2 = (i2 && 1);
    i3 = (i3 || 0);
    i4 = (i4 || 1);
  }
  if (i1 != 0 || i2 != 1 || i3 != 0 || i4 != 1) {
    printf("i1 = %d\n", i1);
    printf("i2 = %d\n", i2);
    printf("i3 = %d\n", i3);
    printf("i4 = %d\n", i4);
  }
}


void sub02() {
  int i, i1, i2, i3, i4, n=2;
  i1 = 1;
  i2 = 1;
  i3 = 0;
  i4 = 0;
#pragma omp parallel
  {
#pragma omp for schedule(static,n) reduction(&&:i1,i2) reduction(||:i3,i4)
    for (i=1; i<=10; i+=1) {
      i1 = (i1 && 0);
      i2 = (i2 && 1);
      i3 = (i3 || 0);
      i4 = (i4 || 1);
    }
  }
  if (i1 != 0 || i2 != 1 || i3 != 0 || i4 != 1) {
    printf("i1 = %d\n", i1);
    printf("i2 = %d\n", i2);
    printf("i3 = %d\n", i3);
    printf("i4 = %d\n", i4);
  }
}


void sub03() {
  static int i, i1, i2, i3, i4, n=2;
#pragma omp single
  {
  i1 = 1;
  i2 = 1;
  i3 = 0;
  i4 = 0;
  }
#pragma omp for schedule(static,n) reduction(&&:i1,i2) reduction(||:i3,i4)
  for (i=1; i<=10; i+=1) {
    i1 = (i1 && 0);
    i2 = (i2 && 1);
    i3 = (i3 || 0);
    i4 = (i4 || 1);
  }
#pragma omp master
  {
    if (i1 != 0 || i2 != 1 || i3 != 0 || i4 != 1) {
      printf("i1 = %d\n", i1);
      printf("i2 = %d\n", i2);
      printf("i3 = %d\n", i3);
      printf("i4 = %d\n", i4);
    }
  }
}

int main() {
  sub01();
  sub02();
#pragma omp parallel
  {
    sub03();
  }
  printf("pass\n");
  return 0;
}
