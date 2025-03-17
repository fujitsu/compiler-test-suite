#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#if defined(SIZE)
#define N SIZE
#else
#define N 100
#endif

#if defined(COPY_SIZE)
#define M COPY_SIZE
#else
#define M 18
#endif

void foo (double *a, double *b) {
  int i;
  for(i=0; i<M; i++) {
    memcpy(&a[30],&b[i],sizeof(double) * (M-i));
  }
}

void init(double *a, double *b, double *res) {
  int i;
#pragma clang loop unroll(disable)
  for(i=0; i<N; i++) {
    a[i] = 0.0;
    b[i] = (double)i;
    res[i] = 0.0;
  }
  for(i=30; i<30+M; i++) {
    res[i] = b[M-1];
  }
}

int main() {
  double a[N],b[N], res[N];
  int i;

  init(a,b,res);
  foo(a,b);
  
  for(i=0; i<N; i++) {
#ifdef DEBUG_PRINT
      printf("a[%d] = %f\n", i,a[i]);
#endif
    if (a[i] != res[i]) {
      printf("ng : a[%d] = %f, res[%d] = %f\n", i,a[i],i,res[i]);
    }
  }
  printf("ok\n");
}

