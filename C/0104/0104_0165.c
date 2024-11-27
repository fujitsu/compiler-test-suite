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
  if (UCHAR_MAX < N+4) {
    *res = 0;
  } else {
    *res = 5;
  }

  *dest = 10;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (unsigned char)i+5;
  }
}

void test(unsigned char * restrict a, unsigned char * restrict dest) {
  int i;
  unsigned char tmp;

  tmp = *dest;
  for(i = 0;i < N; i++) {
    if (tmp > a[i]) {
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
