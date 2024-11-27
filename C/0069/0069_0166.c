
#include <stdio.h>
#include <stdlib.h>
#define ANS 2
#define N 100

void sub(int n) {
  int i;
  int x[n];

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(inout: x)
    for(i=0;i<n;i++) {
      x[i] = 1;
    }
#pragma omp task shared(x) depend(inout: x)
    for(i=0;i<n;i++) {
      x[i] += 1;
    }
  }

  for(i=0;i<n;i++) {
    if (x[i] != ANS) {
      printf("NG\n");
    }
  }
  printf("OK\n");
}

int main()
{
  sub(N);

  return 0;
}
