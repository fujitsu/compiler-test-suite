#include <stdio.h>
#include <stdlib.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 33
#else
#define N 32
#endif

#define CONST_DISTANCE 2
unsigned int a[N];
unsigned int b[N];
unsigned int * restrict dst =a;
unsigned int * restrict cnt =b;

#ifndef ASM_ONLY
void init(unsigned int * res) {
  int i, j = 1;
  for (i = 0; i < N; i++) {
    cnt[i] = 0;
    dst[i] = 0;
    res[i] = 0;
  }
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    cnt[j] = i;
    res[i] = i;
    j++;
  }
}
#endif

void test() {
  int i, j = 1;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    dst[i] = cnt[j];
    j++;
  }
}

#ifndef ASM_ONLY
int main() {
  unsigned int res[N];

  int i;
  init (res);
  for (i = 0; i < 2; i++) {
    test ();
  }
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
#endif
