#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void init(signed short *a, signed short *res, signed short *dest) {
  int i;
  if (SHRT_MAX < N-1) {
    *res = (signed short)SHRT_MAX;
  } else {
    *res = (signed short)(N-1);
  }
  *dest = 0;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i;
  }
}

void test(signed short * restrict a, signed short * restrict dest) {
  int i;
  signed short tmp = 0;
  for(i = 0;i < N; i++) {
    if (tmp < a[i]) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  signed short a[N];
  signed short dest, res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,&res, &dest);
    test (a,&dest);
  }
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
