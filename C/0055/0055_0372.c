extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned char
#endif

TYPE a0, a1, a2;

TYPE foo0() {
  TYPE ret ;
  ret = __atomic_add_fetch(&a0,a1,__ATOMIC_RELAXED) ;
  return ret;
}
TYPE foo1() {
  TYPE ret ;
  ret = __atomic_add_fetch(&a0,a1,__ATOMIC_CONSUME) ;
  return ret;
}
TYPE foo2() {
  TYPE ret ;
  ret = __atomic_add_fetch(&a0,a1,__ATOMIC_ACQUIRE) ;
  return ret;
}
TYPE foo3() {
  TYPE ret ;
  ret = __atomic_add_fetch(&a0,a1,__ATOMIC_RELEASE) ;
  return ret;
}
TYPE foo4() {
  TYPE ret ;
  ret = __atomic_add_fetch(&a0,a1,__ATOMIC_ACQ_REL) ;
  return ret;
}
TYPE foo5() {
  TYPE ret ;
  ret = __atomic_add_fetch(&a0,a1,__ATOMIC_SEQ_CST) ;
  return ret;
}

#ifndef NO_EXEC
int main() {
  a0 = 0x5e;
  a1 = 1;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo0();
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x5e;
  a1 = 1;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo1();
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x5e;
  a1 = 1;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo2();
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x5e;
  a1 = 1;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo3();
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x5e;
  a1 = 1;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo4();
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x5e;
  a1 = 1;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo5();
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);

  return 0;
}
#endif

#else

int main() {
  printf("0x%x\n", 0x5e);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5e);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5e);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5e);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5e);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5e);
  printf("0x%x\n", 0x5f);
  printf("0x%x\n", 0x5f);

  return 0;
}
#endif
