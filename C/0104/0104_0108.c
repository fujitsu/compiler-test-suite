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
  *res = (unsigned long long)N-1;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i;
    b[i] = i;
  }
}

void test(unsigned long long * restrict a, unsigned long long * restrict b) {
  int i;
  for(i = 0;i < N; i++) {
    if (b[N/3] < a[i]) {
      b[N/3] = a[i];
    }
  }
}

int main() {
  unsigned long long a[N],b[N];
  unsigned long long res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,b,&res);
    test (a,b);
  }
  if (b[N/3] != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
