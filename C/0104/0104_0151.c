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

void init(int *a, int *b, int *res) {
  int i;

  if ((long long int)INT_MAX < (long long int)N+4) {
    *res = INT_MIN;
  } else {
    *res = (int) ((N/3)>5)?5:N/3;
  }

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i+5;
    b[i] = i;
  }
}

void test(int * restrict a, int * restrict b) {
  int i;
  for(i = 0;i < N; i++) {
    if (b[N/3] > a[i]) {
      b[N/3] = a[i];
    }
  }
}

int main() {
  int a[N],b[N];
  int res;
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
