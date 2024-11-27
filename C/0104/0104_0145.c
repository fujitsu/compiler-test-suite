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

void init(unsigned char *a, unsigned char *res, unsigned char *dest) {
  int i;
  if (UCHAR_MAX < N-1) {
    *res = UCHAR_MAX;
  } else {
    *res = (unsigned char)(N-1);
  }

  *dest = 0.0;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (unsigned char)i;
  }
}

void test(unsigned char * restrict a, unsigned char * restrict dest) {
  int i;
  unsigned char tmp = 0;
  for(i = 0;i < N; i++) {
    if (tmp < a[i]) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  unsigned char a[N];
  unsigned char dest, res;
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
