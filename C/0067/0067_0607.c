#include <stdio.h>
#include <omp.h>

void sub01() {
  int s, i, n=2;
  s = 0;
#pragma omp parallel for schedule(static,n)
  for (i=100; i>0; i-=3) {
#pragma omp atomic
    s=s+1;
  }
  if (s != 34) {
    printf("sub01 ng: s = %d\n", s);
  }
}


void sub02() {
  int s, i, n=5;
  s = 0;
#pragma omp parallel
  {
#pragma omp for schedule(static,n)
    for (i=100; i>0; i-=3) {
#pragma omp atomic
      s=s+1;
    }
  }
  if (s != 34) {
    printf("sub02 ng: s = %d\n", s);
  }
}


void sub03() {
  static int s=0, i, n=10;
#pragma omp for schedule(static,n)
  for (i=100; i>0; i-=3) {
#pragma omp atomic
    s=s+1;
  }
  if (s != 34) {
    printf("sub03 ng: s = %d\n", s);
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
