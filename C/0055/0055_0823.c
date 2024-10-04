extern int printf(const char *, ...);

#if defined(__GNUC__)

#ifndef TYPE
#define TYPE int  
#endif

void foo(volatile TYPE *a, volatile TYPE *b) {
  *a = 0x7f;
  __sync_synchronize();
  *b = 0x7e;
}

#ifndef NO_EXEC
int main() {
  volatile TYPE a, b;
  foo(&a, &b);
  printf("0x%x\n", (int)a);
  printf("0x%x\n", (int)b);
  return 0;
}
#endif

#else
int main() {
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  return 0;
}
#endif
