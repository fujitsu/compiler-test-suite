#include <stdio.h>

#define N 10

static void init_b(int *b) {
  int i;
  for (i=0; i<N; ++i) {
    b[i] = 1;
  }
}

static void foo(int n, int k, double *a) {
  int i;
  int b[10];

  init_b(b);
  for (i=0; i<n; ++i) {
    if (b[5] == 1) {
      a[i] = i;
    }
  }
  return;
}

#define ANS1  (double)45.0

int main(void) {
  int i;
  double s1;
  double a[N];
  
#pragma clang loop unroll(disable)
  for (i=0; i<N; ++i) {
    a[i] = 0.0;
  }

  foo(N,1,a);

  s1 = 0.0; 
#pragma clang loop unroll(disable)
  for (i=0; i<N; ++i) {
    s1 += a[i];
  }

  if (s1 != ANS1) {
    printf("ng:s1 == %lf != %lf\n", s1, ANS1);
  } else {
    printf("ok\n");
  }

  return 0;
}
