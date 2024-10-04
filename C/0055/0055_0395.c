extern int printf(const char *, ...);

#if defined(__GNUC__)

#ifndef TYPE
#define TYPE unsigned char
#endif


  
void foo0( TYPE *x) {
  __atomic_clear(x,__ATOMIC_RELAXED);  
}
void foo1( TYPE *x) {
  __atomic_clear(x,__ATOMIC_RELEASE);  
}
void foo2( TYPE *x) {
  __atomic_clear(x,__ATOMIC_SEQ_CST);  
}
#ifndef NO_EXEC
int main() {
  TYPE a0;

  a0 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo0(&a0);
  printf("0x%x\n", (int)a0);
  a0 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo1(&a0);
  printf("0x%x\n", (int)a0);
  a0 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo2(&a0);
  printf("0x%x\n", (int)a0);
  return 0;
}
#endif
#else
int main() {
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x0);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x0);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x0);

  return 0;
}
#endif
