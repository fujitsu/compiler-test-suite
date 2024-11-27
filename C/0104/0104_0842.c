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

void init(float *a, float *b, float *res) {
  int i;
  *res = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (float)i;
    b[i] = (float)i;
    if (i > N/2) {
      *res = *res + (float)i;
    }
  }
}

void test(float * restrict a, float * restrict b, float * restrict dest) {
  int i;
  float tmp = 0;
  for(i = 0;i < N; i++) {
    if (b[i] > N/2) {
      tmp = tmp + a[i];
    }
  }
  *dest = tmp;
}

int main() {
  float a[N],b[N];
  float dest, res;
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
