#include <stdio.h>
#include <stdlib.h>
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

#define CONST_DISTANCE 7

void init(double *a, int *b, double *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    res[i] = 0.0;
    a[i] = (double)i+1.0;
    if (i >= N/2) {
      	b[i] = 1;
    } else {
	b[i] = 0;
    }
  }
}

void test(double * restrict a, int * restrict b, double * restrict res) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    if (b[i] == 1) {
      res[i] = a[i];
    }
  }
}

int MAINF() {
  double a[N], res[N];
  int b[N];
  int i, dist;
  init (a,b,res);
  for (i = 0; i < 2; i++) {
    test(a,b,res);
  }

  dist = 0;
  for (i = 0; i < N; ++i) {
    if (i == dist) {
      if(i >= N/2) {
	if((double)i+1.0 != res[i]) {
	  PRINT_NG;
	}
      } else {
	if(0.0 != res[i]) {
	  PRINT_NG;
	}
      }
      dist = dist + CONST_DISTANCE;
    } else {
      if(0.0 != res[i]) {
	PRINT_NG;
      }
    }
  }

  PRINT_OK;
  return 0;
}
