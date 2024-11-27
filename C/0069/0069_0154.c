
#include <stdio.h>
#define ANS 225
#define N 100

void init(int *x) {
  int i;
  for (i=0; i<N; i++) {
    x[i] = 15;
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

  m = 10;

  init(x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(out: x[m*2])
    { 
      for(i = 0; i < N; i++) {
	x[i] = x[i] * x[i];
      }
    }
#pragma omp task shared(x) depend(inout: x[m*2])
    test(x);
  }
  
  return 0;
}
