extern int printf(const char *, ...);

#if defined(__GNUC__)

#ifndef TYPE
#define TYPE int  
#endif

void foo(volatile TYPE *a) {
  __sync_lock_release(a);
}

#ifndef NO_EXEC
int main() {
  volatile TYPE a;
  a = 0x7f;
  printf("0x%x\n", (int)a);
  foo(&a);
  printf("0x%x\n", (int)a);
  return 0;
}
#endif

#else
int main() {
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x0);
  return 0;
}
#endif
