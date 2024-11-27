#include <stdio.h>
#include <omp.h>

void sub01() {
  int s, i;
  s = 0;
#pragma omp parallel for schedule(static,1)
  for (i=0; i<100; i+=3) {
#pragma omp atomic
    s+=1;
  }
  if (s != 34) {
    printf("sub01 ng: s = %d\n", s);
  }
}


void sub02() {
  int s, i;
  s = 0;
#pragma omp parallel
  {
#pragma omp for schedule(static,1)
    for (i=0; i<100; i+=3) {
#pragma omp atomic
      s+=1;
    }
  }
  if (s != 34) {
    printf("sub02 ng: s = %d\n", s);
  }
}


void sub03() {
  static int s = 0;
  int i;
#pragma omp for schedule(static,1)
  for (i=0; i<100; i+=3) {
#pragma omp critical
    s+=1;
  }
#pragma omp barrier
#pragma omp master
  {
    if (s != 34) {
      printf("sub03 ng: s = %d\n", s);
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
