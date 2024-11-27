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

void init(long long *a, long long *b, long long *res) {
  int i;
  *res = ((N/3)>5)?5:N/3;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (long long)i+5;
    b[i] = (long long)i;
  }
}

void test(long long * restrict a, long long * restrict b) {
  int i;
  for(i = 0;i < N; i++) {
    if (b[N/3] > a[i]) {
      b[N/3] = a[i];
    }
  }
}

int main() {
  long long a[N],b[N];
  long long res;
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
