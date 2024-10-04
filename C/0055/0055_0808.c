extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed short
#endif
TYPE foo(volatile TYPE *x, TYPE y) {
  return __sync_or_and_fetch(x, y);
}

#ifndef NO_EXEC
extern int printf(const char *, ...);
volatile TYPE a[4];
int main() {
  int ret;
  volatile TYPE a0, a1;
  a0 = 0x55;
  a1 = 0x55;
  ret = (int)foo(&a1, 0x23);
  if (ret != 0x77 || a1 != 0x77) {
    printf("0x%x\n", (int)a0);
    printf("0x%x\n", ret);
    printf("0x%x\n", (int)a1);
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
