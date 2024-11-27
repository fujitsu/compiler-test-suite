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

void init(signed char *a, signed char *res, signed char *dest) {
  int i;
  if (SCHAR_MAX < N-1) {
    *res = SCHAR_MAX;
  } else {
    *res = (signed char)(N-1);
  }
  *dest = 0;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i;
  }
}

void test(signed char * restrict a, signed char * restrict dest) {
  int i;
  signed char tmp = 0;
  for(i = 0;i < N; i++) {
    if (tmp < a[i]) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  signed char a[N];
  signed char dest, res;
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
