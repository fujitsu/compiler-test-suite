#include <stdio.h>
#include <omp.h>

void sub01() {
  int s, i, j, n=3;
  s = 0;
#pragma omp parallel for schedule(static,n) collapse(2)
  for (i=1; i<=10; i+=1) {
    for (j=1; j<=10; j+=1) {
#pragma omp atomic
      s=s+1;
    }
  }
  if (s != 100) {
    printf("sub01 ng: s = %d\n", s);
  }
}


void sub02() {
  int s, i, j, n=3;
  s = 0;
#pragma omp parallel
  {
#pragma omp for schedule(static,n) collapse(2)
    for (i=1; i<=10; i+=1) {
      for (j=1; j<=10; j+=1) {
#pragma omp atomic
	s=s+1;
      }
    }
  }
  if (s != 100) {
    printf("sub02 ng: s = %d\n", s);
  }
}


void sub03() {
  static int s;
  int i, j, n=3;
  s = 0;
#pragma omp barrier
#pragma omp for schedule(static,n) collapse(2)
  for (i=1; i<=10; i+=1) {
    for (j=1; j<=10; j+=1) {
#pragma omp atomic
      s=s+1;
    }
  }
#pragma omp barrier
#pragma omp master
  {
    if (s != 100) {
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
