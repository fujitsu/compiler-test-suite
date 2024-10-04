extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned long int
#endif

TYPE a0, a1;

void foo1() {
  __atomic_store(&a0,&a1,__ATOMIC_CONSUME);
}
void foo2() {
  __atomic_store(&a0,&a1,__ATOMIC_ACQUIRE);
}
void foo4() {
  __atomic_store(&a0,&a1,__ATOMIC_ACQ_REL);
}

#ifndef NO_EXEC
int main() {
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", a0);
  foo1();
  printf("0x%x\n", a1);
  printf("0x%x\n", a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", a0);
  foo2();
  printf("0x%x\n", a1);
  printf("0x%x\n", a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", a0);
  foo4();
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
