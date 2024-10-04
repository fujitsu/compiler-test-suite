extern int printf(const char *, ...);

#if defined(__GNUC__)


#ifndef TYPE
#define TYPE unsigned short int
#endif

TYPE a0, a1 , a2;

TYPE foo0() {
  a2 = __atomic_exchange_n(&a0,a1,__ATOMIC_RELAXED) ;
  return a2;
}
TYPE foo2() {
  a2 = __atomic_exchange_n(&a0,a1,__ATOMIC_ACQUIRE) ;
  return a2;
}
TYPE foo3() {
  a2 = __atomic_exchange_n(&a0,a1,__ATOMIC_RELEASE) ;
  return a2;
}
TYPE foo4() {
  a2 = __atomic_exchange_n(&a0,a1,__ATOMIC_ACQ_REL) ;
  return a2;
}
TYPE foo5() {
  a2 = __atomic_exchange_n(&a0,a1,__ATOMIC_SEQ_CST) ;
  return a2;
}

#ifndef NO_EXEC
int main() {
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  a2 = (TYPE)foo0();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  a2 = (TYPE)foo2();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  a2 = (TYPE)foo3();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  a2 = (TYPE)foo4();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  a2 = (TYPE)foo5();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);

  return 0;
}
#endif

#else
int main() {
  printf("a0= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7e);
  printf("a1= 0x%x\n", 0x7e);
  printf("a2= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7e);
  printf("a1= 0x%x\n", 0x7e);
  printf("a2= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7e);
  printf("a1= 0x%x\n", 0x7e);
  printf("a2= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7e);
  printf("a1= 0x%x\n", 0x7e);
  printf("a2= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7f);
  printf("a0= 0x%x\n", 0x7e);
  printf("a1= 0x%x\n", 0x7e);
  printf("a2= 0x%x\n", 0x7f);

  return 0;
}
#endif
