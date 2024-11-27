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

#define CONST_DISTANCE 2

void init(unsigned long long *a, int *b, unsigned long long *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    res[i] = 0ULL;
    a[i] = (unsigned long long)i+1ULL;
    if (i >= N/2) {
      	b[i] = 1;
    } else {
	b[i] = 0;
    }
  }
}

void test(unsigned long long * restrict a, int * restrict b, unsigned long long * restrict res) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    if (b[i] == 1) {
      res[i] = a[i];
    }
  }
}

int MAINF() {
  unsigned long long a[N], res[N];
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
	if((unsigned long long)i+1ULL != res[i]) {
	  PRINT_NG;
	}
      } else {
	if(0ULL != res[i]) {
	  PRINT_NG;
	}
      }
      dist = dist + CONST_DISTANCE;
    } else {
      if(0ULL != res[i]) {
	PRINT_NG;
      }
    }
  }

  PRINT_OK;
  return 0;
}
