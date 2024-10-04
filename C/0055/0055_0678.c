extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed long int
#endif

void foo0( TYPE *x, TYPE y) {
  __atomic_store_n(x,y,__ATOMIC_RELAXED);
}
void foo3( TYPE *x, TYPE y) {
  __atomic_store_n(x,y,__ATOMIC_RELEASE);
}
void foo5( TYPE *x, TYPE y) {
  __atomic_store_n(x,y,__ATOMIC_SEQ_CST);
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1;
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo0(&a0,a1);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo3(&a0,a1);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo5(&a0,a1);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);

  return 0;
}
#endif

#else

int main() {
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);

  return 0;
}
#endif
