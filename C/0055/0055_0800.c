extern int printf(const char *, ...);
#if defined(__GNUC__)
#include <stdio.h>
#ifndef TYPE
#define TYPE signed short int
#endif
TYPE foo(volatile TYPE *x, TYPE y) {
  return __sync_nand_and_fetch(x, y);
}

#ifndef NO_EXEC
extern int printf(const char *, ...);
volatile TYPE a[4];
int main() {
  int ret;
  volatile TYPE a0, a1, a2, a3, a4;
  a0 = 0xfe;
  a1 = 0xfd;
  a2 = 0xfc;
  a3 = 0xfb;
  a4 = a1;

  ret = (int)foo(&a1, 0x3);

  if ( a4 != 0xfd || ret != 0xfffffffe || a1 != 0xfffffffe) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", ret);
    printf("0x%x\n", (int)a1);
  } else {
    printf("ok\n");
  }
  return 0;
}
#endif

#else

int main() {
  printf("ok\n");
  return 0;
}

#endif
