extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned short
#endif

TYPE foo(volatile TYPE *x, TYPE y) {
  return __sync_lock_test_and_set(x, y);
}

#ifndef NO_EXEC
int main() {
  TYPE ret;
  volatile TYPE a0, a1, a2;
  a2 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  ret = (int)foo(&a0, a1);
  if (ret != 0x7f || a0 != 0x7e) {
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", ret);
    printf("0x%x\n", (int)a0);
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
