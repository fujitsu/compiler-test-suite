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

#define CONST_DISTANCE 2
int a[N];
int b[N];
int * restrict dst =a;
int * restrict cnt =b;

#ifndef ASM_ONLY
void init(int * res) {
  int i, j = 0;
  for (i = 0; i < N; i++) {
    cnt[i] = 0;
    dst[i] = 0;
    res[i] = 0;
  }
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    cnt[i] = i;
    res[j] = i;
    j++;
  }
}
#endif

void test() {
  int i, j = 0;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    dst[j] = cnt[i];
    j++;
  }
}

#ifndef ASM_ONLY
int main() {
  int res[N];

  int i;
  init (res);
  for (i = 0; i < 2; i++) {
    test ();
  }
#ifdef DEBUG
  for (i = 0; i < N; i++) {
    printf("i   = %2d\n",i);
    printf("a   = %2d\n",a[i]);
    printf("res = %2d\n",res[i]);
  }
#endif
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
#endif
