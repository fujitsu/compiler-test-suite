extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed short
#endif
TYPE foo(volatile TYPE *x, TYPE y) {
  return __sync_and_and_fetch(x, y);
}

#ifndef NO_EXEC
extern int printf(const char *, ...);
volatile TYPE a[4];
int main() {
  int ret;
  volatile TYPE a0, a1;
  a0 = 0x7e;
  a1 = 0x7e;
  ret = (int)foo(&a1, 0x70);
  if (ret != 0x70 || a1 != 0x70) {
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
