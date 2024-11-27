#include <stdio.h>
#include <stdlib.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define POS 1

void init(signed short *a, signed short *res, signed short *c) {
  int i,tmp;

  tmp = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i;
    if (i%4 == POS) {
      c[i] = 2;
    } else {
      c[i] = 1;
      tmp = i;
    }
  }
  *res = a[tmp];
}

void test(signed short * restrict a, signed short * restrict dest, signed short * restrict c, signed short x) {
  int i;
  signed short tmp = 0;
  for(i = 0;i < N; i++) {
    if (c[i] == x) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  signed short a[N];
  signed short dest, res, c[N];
  int i;
  for (i = 0; i < 2; i++) {
    init (a,&res,c);
    test (a,&dest,c,1);
  }

  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
