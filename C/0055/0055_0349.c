extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed int
#endif
TYPE foo(volatile TYPE *x, TYPE y) {
  return __sync_add_and_fetch(x, y);
}

#ifndef NO_EXEC
volatile TYPE a[4];
int main() {
  int ret;
  volatile TYPE a0, a1;
  a0 = 0x5e;
  a1 = 0x5e;
  ret = (int)foo(&a1, 3);
  if (ret != 0x61 || a1 != 0x61) {
    printf("0x%x\n", (int)a1);
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
