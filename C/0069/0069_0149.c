
#include <stdio.h>
#define ANS 1
#define N 100

void init(int *x) {
  int i;
  for (i=0; i<N; i++) {
    x[i] = 1;
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
#pragma omp task shared(x) depend(in: x)
    test(x);
#pragma omp task shared(x) depend(inout: x)
    { 
      for(i = 0; i < N; i++) {
	x[i] = 2;
      }
    }
  }
  
  return 0;
}
