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

void init(unsigned short *a, unsigned short *res, unsigned short *dest) {
  int i;
  if (USHRT_MAX < N+4) {
    *res = 0;
  } else {
    *res = 5;
  }

  *dest = 10;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (unsigned short)i+5;
  }
}

void test(unsigned short * restrict a, unsigned short * restrict dest) {
  int i;
  unsigned short tmp;

  tmp = *dest;
  for(i = 0;i < N; i++) {
    if (tmp > a[i]) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  unsigned short a[N];
  unsigned short dest, res;
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
