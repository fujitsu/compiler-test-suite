
#include <stdio.h>
#define ANS 4
#define N 100

void init(int *x) {
  int i;
  for (i=0; i<N; i++) {
    x[i] = 2;
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

  init(x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(out: x[5])
    { 
      for(i = 0; i < N; i++) {
	x[i] += 2;
      }
    }
#pragma omp task shared(x) depend(in: x[5])
    test(x);
  }
  
  return 0;
}
