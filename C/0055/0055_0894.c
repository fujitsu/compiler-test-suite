extern int printf(const char *, ...);

#if defined(__GNUC__) 

#if defined(TYPE)
#define T TYPE
#elif defined(VOLATILE)
#define T volatile unsigned long long
#else
#define T unsigned long long
#endif


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

T foo(T *x, T y) {
  int i;
  T res;

  for (i=0; i<N; ++i) {
    res = __sync_lock_test_and_set(x, y);
  }
  return res;
}

#ifndef NO_EXEC
int main() {
  int ret;
  T a0, a1;
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  ret = (int)foo(&a0, a1);
  printf("0x%x\n", ret);
  printf("0x%x\n", (int)a0);
  return 0;
}
#endif

#else

int main() {
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  return 0;
}

#endif
