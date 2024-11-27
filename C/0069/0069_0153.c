
#include <stdio.h>
#define ANS 4
#define N 100

void init(int *x) {
  int i;
  for (i=0; i<N; i++) {
    x[i] = 12;
  }
}

void test(int *x) {
  int i;
  for (i=0; i<N; i++) {
    if (x[i] != ANS) {
      printf("NG\n");
    }
  }
  printf("OK\n");
}

int main() {
  int x[N], i;
  int m;

  m = 5;

  init(x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(out: x[m])
    { 
      for(i = 0; i < N; i++) {
	x[i] /= 3;
      }
    }
#pragma omp task shared(x) depend(out: x[m])
    test(x);
  }
  
  return 0;
}
