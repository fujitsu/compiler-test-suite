extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed long int
#endif

TYPE a0, a1;


void foo0() {
  __atomic_load(&a0,&a1,__ATOMIC_RELAXED);
}
void foo1() {
  __atomic_load(&a0,&a1,__ATOMIC_CONSUME);
}
void foo2() {
  __atomic_load(&a0,&a1,__ATOMIC_ACQUIRE);
}
void foo5() {
  __atomic_load(&a0,&a1,__ATOMIC_SEQ_CST);
}

#ifndef NO_EXEC
int main() {
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo0();
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo1();
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo2();
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo5();
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);

  return 0;
}
#endif

#else
int main() {
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);

  return 0;
}
#endif
