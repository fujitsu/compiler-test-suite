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

void init(unsigned long long *a, unsigned long long *b, unsigned long long *res) {
  int i;
  *res = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (unsigned long long)i;
    b[i] = (unsigned long long)i;
    if (i > N/2) {
      *res = *res + (unsigned long long)i;
    }
  }
}

void test(unsigned long long * restrict a, unsigned long long * restrict b, unsigned long long * restrict dest) {
  int i;
  unsigned long long tmp = 0;
  for(i = 0;i < N; i++) {
    if (b[i] > N/2) {
      tmp = tmp + a[i];
    }
  }
  *dest = tmp;
}

int main() {
  unsigned long long a[N],b[N];
  unsigned long long dest, res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,b,&res);
    test (a,b,&dest);
  }
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
