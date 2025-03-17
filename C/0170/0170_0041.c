#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#if defined(SIZE)
#define N SIZE
#else
#define N 50
#endif

#if defined(COPY_SIZE)
#define M COPY_SIZE
#else
#define M 10
#endif

void foo (double *a, double *b, int x) {
  int i;
  for(i=0; i<N; i++) {
    if (x == 1) {
      memcpy(a,b,sizeof(double) * M);
    }
  }
}

void init(double *a, double *b, double *res) {
  int i,count;
  count = 0;
#pragma clang loop unroll(disable)
  for(i=0; i<N; i++) {
    a[i] = 0.0;
    b[i] = 1.0;
    res[i] = 0.0;
    if (count < M) {
      res[i] = b[i];
    }
    count++;
  }
}

int main() {
  double a[N],b[N], res[N];
  int i;

  init(a,b,res);
  foo(a,b,1);
  
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

