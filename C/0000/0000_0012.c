#include <stdio.h>
#include <stdlib.h>

#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#define MAINF MAIN__
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main
#endif

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#ifndef ASM_ONLY
void init(unsigned * dest, unsigned * src1, unsigned * src2, unsigned *res) {
  int i;
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    if (i == 0) {
      src1[i] = 4U;
      src2[i] = 3U;
    } else {
      src1[i] = (unsigned)(2*(i+1)+1);
      src2[i] = (unsigned)(i+1);
    }
    res[i] = 127 % src2[i];
  }
}
#endif

void test(unsigned * restrict dest, unsigned * restrict src1, unsigned * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = 127 % src2[i];
  }
}

#ifndef ASM_ONLY
int MAINF() {
  unsigned dest[N], src1[N], src2[N], res[N];
  int i;
  init (dest, src1, src2, res);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
#endif
