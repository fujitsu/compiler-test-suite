extern int printf(const char *, ...);

#if defined(__GNUC__)


#ifndef TYPE
#define TYPE unsigned long int
#endif


TYPE a0, a1 , a2;

void foo0() {
  __atomic_exchange(&a0,&a1,&a2,__ATOMIC_RELAXED) ;
  return ;
}
void foo2( ) {
  __atomic_exchange(&a0,&a1,&a2,__ATOMIC_ACQUIRE) ;
  return ;
}
void foo3() {
  __atomic_exchange(&a0,&a1,&a2,__ATOMIC_RELEASE) ;
  return ;
}
void foo4() {
  __atomic_exchange(&a0,&a1,&a2,__ATOMIC_ACQ_REL) ;
  return ;
}
void foo5() {
  __atomic_exchange(&a0,&a1,&a2,__ATOMIC_SEQ_CST) ;
  return ;
}

#ifndef NO_EXEC
int main() {
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  foo0();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  foo2();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  foo3();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  foo4();
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  printf("a0= 0x%x\n", (int)a0);
  foo5();
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
