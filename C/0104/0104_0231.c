#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define INDX 1

void init(long long *a, long long *b, int *c, int *d, long long *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    a[i] = 0 ;
    b[i] = (long long)i * 2 ;
    res[i] = (long long)i * 2 ;
  }
}

void test(int dummy1, int dummy2, int dummy3, int dummy4, int dummy5, int dummy6, 
	  long long * restrict a, long long * restrict b, int * restrict c, int * restrict d) {
  int i;
  for(i = 0;i < N-1;i++ ) {
    a[c[i]+INDX] = b[d[i]+INDX];
  }
}

int MAINF() {
  long long a[N], b[N], res[N];
  int c[N], d[N];
  int i;

  init (a,b,c,d,res);
  test (1,0,0,0,0,0,a,b,c,d);

  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
