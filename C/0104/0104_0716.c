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

struct struct_1
{
  int a[N];
};

struct struct_2
{
  int res[N];
};

void init(struct struct_1 *st1, struct struct_2 *st2, int *b) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    st1->a[i] = i+1;
    st2->res[i] = 0;
    if (i >= N/2) {
      	b[i] = 1;
    } else {
	b[i] = 0;
    }
  }
}

void test(struct struct_1 * restrict st1, struct struct_2 * restrict st2, int * restrict b) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    if (b[i] == 1) {
      st2->res[i] = st1->a[i];
    }
  }
}

int MAINF() {
  struct struct_1 st1;
  struct struct_2 st2;
  int b[N];
  int i, dist;
  init (&st1, &st2, b);
  for (i = 0; i < 2; i++) {
    test(&st1, &st2, b);
  }

  dist = 0;
  for (i = 0; i < N; ++i) {
    if (i == dist) {
      if(i >= N/2) {
	if(i+1 != st2.res[i]) {
	  PRINT_NG;
	}
      } else {
	if(0 != st2.res[i]) {
	  PRINT_NG;
	}
      }
      dist = dist + CONST_DISTANCE;
    } else {
      if(0 != st2.res[i]) {
	PRINT_NG;
      }
    }
  }
  PRINT_OK;
  return 0;
}
