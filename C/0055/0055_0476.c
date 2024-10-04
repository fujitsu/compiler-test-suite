extern int printf(const char *, ...);

#if defined(__GNUC__)


#ifndef TYPE
#define TYPE unsigned char
#endif

TYPE foo0(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_exchange_n(x,y,__ATOMIC_RELAXED) ;
  return ret;
}
TYPE foo2(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_exchange_n(x,y,__ATOMIC_ACQUIRE) ;
  return ret;
}
TYPE foo3(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_exchange_n(x,y,__ATOMIC_RELEASE) ;
  return ret;
}
TYPE foo4(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_exchange_n(x,y,__ATOMIC_ACQ_REL) ;
  return ret;
}
TYPE foo5(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_exchange_n(x,y,__ATOMIC_SEQ_CST) ;
  return ret;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1 , a2, a4;
  a4 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  a2 = (TYPE)foo0(&a0,a1);
  if (a0 != 0x7e || a1 != 0x7e || a2 != 0x7f) {
    printf("a0= 0x%x\n", (int)a4);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
  }
  a4 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  a2 = (TYPE)foo2(&a0,a1);
  if (a0 != 0x7e || a1 != 0x7e || a2 != 0x7f) {
    printf("a0= 0x%x\n", (int)a4);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
  }
  a4 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  a2 = (TYPE)foo3(&a0,a1);
  if (a0 != 0x7e || a1 != 0x7e || a2 != 0x7f) {
    printf("a0= 0x%x\n", (int)a4);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
  }
  a4 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  a2 = (TYPE)foo4(&a0,a1);
  if (a0 != 0x7e || a1 != 0x7e || a2 != 0x7f) {
    printf("a0= 0x%x\n", (int)a4);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
  }
  a4 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  a2 = (TYPE)foo5(&a0,a1);
  if (a0 != 0x7e || a1 != 0x7e || a2 != 0x7f) {
    printf("a0= 0x%x\n", (int)a4);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
  }

  printf("ok\n");

  return 0;
}
#endif

#else
int main() {
  printf("ok\n");
  return 0;
}
#endif
