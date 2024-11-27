#include <stdio.h>
#include <omp.h>

void sub01() {
  int i,n=2;
  printf("sub01: ");
#pragma omp parallel for schedule(static,n) ordered
  for (i=1; i<=10; i+=1) {
#pragma omp ordered
    printf("%d ", i);
  }
  printf("\n");
}


void sub02() {
  int i,n=2;
  printf("sub02: ");
#pragma omp parallel
  {
#pragma omp for schedule(static,n) ordered
    for (i=1; i<=10; i+=1) {
#pragma omp ordered
      printf("%d ", i);
    }
  }
  printf("\n");
}


void sub03() {
  static int i,n=2;
#pragma omp master
  {
    printf("sub03: ");
  }
#pragma omp for schedule(static,n) ordered
  for (i=1; i<=10; i+=1) {
#pragma omp ordered
    printf("%d ", i);
  }
#pragma omp master
  {
    printf("\n");
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
