#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N 100
#define M 40

int foo (double *a, double *b) {
  int i,ret;

  ret = 0;
  for(i=0; i<M; i++) {
    if (memcmp(&a[i],&b[i],sizeof(double)*(i+1)) != 0) {
      ret = 1;
    }
  }
  return ret;
}

void init(double *a, double *b) {
  int i;
#pragma clang loop unroll(disable)
  for(i=0; i<N; i++) {
    a[i] = (double)i;
    b[i] = (double)i;
  }
}

int main() {
  double a[N],b[N];

  init(a,b);
  if (foo(a,b) != 0) {
    printf("ng\n");
  }
  printf("ok\n");
}

