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

#ifndef ASM_ONLY
void init(float * dst, float * src, int * list, float * res) {
  int i, n;
  n = N - 1;
  for (i = 0; i < N; i++) {
    dst[i]  = 0;
    src[i]  = i;
    list[i] = n - i;
    res[i]  = n - i;
  }
}
#endif

void test(float * restrict dst, float * restrict src, int * restrict list) {
  int i;
  for(i = 0; i < N; i++) {
    dst[i] = src[list[i]];
  }
}

#ifndef ASM_ONLY
int main() {
  float dst[N], src[N], res[N];
  int list[N];
  int i;
  init (dst, src, list, res);
  for (i = 0; i < 2; i++) {
    test (dst, src, list);
  }
  for (i = 0; i < N; i++) {
    if (dst[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
#endif
