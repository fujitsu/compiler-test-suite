extern int printf(const char *, ...);

#if defined(__GNUC__)

#ifndef TYPE
#define TYPE unsigned char
#endif
TYPE foo(volatile TYPE *x, TYPE y) {
  return __sync_fetch_and_sub(x, y);
}

#ifndef NO_EXEC
extern int printf(const char *, ...);
volatile TYPE a[4];
int main() {
  int ret;
  volatile TYPE a0, a1, a2, a4;
  a4 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x5d;
  ret = (int)foo(&a1, a2);
  if (ret != 0x7e || a1 != 0x21 || a2 != 0x5d) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", ret);
    printf("0x%x\n", (int)a1);
    printf("0x%x\n", (int)a2);
  }
  printf("ok\n");
  return 0;
}
#endif

#else

int main() {
  printf("ok\n");
  return 0;
}

#endif
