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

void foo(T *a, T * restrict b, T * restrict c, int n) {
  int i;
  for (i = 0; i < n; ++i) {
    *a = b[i] + c[i];
    __sync_lock_release(a);
  }
}

#ifndef NO_EXEC
int main() {
  T a = 0;
  T b[] = {10,11,12,13,14,15,16,17,18,19};
  T c[] = {10,11,12,13,14,15,16,17,18,19};

  foo(&a,b,c,N);
  
  if (a == 0) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  
  return 0;
}
#endif

#else

int main() {
  printf("OK\n");
  return 0;
}

#endif
