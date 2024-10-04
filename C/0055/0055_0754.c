extern int printf(const char *, ...);
#if defined(__GNUC__)
#include <stdio.h>

#ifndef TYPE
#define TYPE signed long long int
#endif
TYPE foo(volatile TYPE *x, TYPE y) {
  return __sync_fetch_and_nand(x, y);
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
  if ( a4 != 0xfd || ret != 0xfd || a1 != 0xfffffffffffffffe) {
    printf("%Lx\n", a4);
    printf("%x\n", ret);
    printf("%Lx\n", a1);
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
