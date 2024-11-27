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

void init(unsigned int *a, unsigned int *res, unsigned int *dest) {
  int i;
  if ((long long int)UINT_MAX < (long long int)N-1) {
    *res = UINT_MAX;
  } else {
    *res = (unsigned int)((long long int)N-1);
  }
  *dest = 0.0;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (unsigned int)i;
  }
}

void test(unsigned int * restrict a, unsigned int * restrict dest) {
  int i;
  unsigned int tmp = 0;
  for(i = 0;i < N; i++) {
    if (tmp < a[i]) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  unsigned int a[N];
  unsigned int dest, res;
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
