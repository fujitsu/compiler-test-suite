extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned char
#endif

TYPE a0, a1;


void foo0() {
  __atomic_store(&a0,&a1,__ATOMIC_RELAXED);
}
void foo3() {
  __atomic_store(&a0,&a1,__ATOMIC_RELEASE);
}
void foo5() {
  __atomic_store(&a0,&a1,__ATOMIC_SEQ_CST);
}

#ifndef NO_EXEC
int main() {
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", a0);
  foo0();
  printf("0x%x\n", a1);
  printf("0x%x\n", a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", a0);
  foo3();
  printf("0x%x\n", a1);
  printf("0x%x\n", a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", a0);
  foo5();
  printf("0x%x\n", a1);
  printf("0x%x\n", a0);

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
