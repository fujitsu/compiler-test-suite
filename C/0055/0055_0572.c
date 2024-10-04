extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed char
#endif

TYPE foo0(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_xor(x,y,__ATOMIC_RELAXED) ;
  return ret;
}
TYPE foo1(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_xor(x,y,__ATOMIC_CONSUME) ;
  return ret;
}
TYPE foo2(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_xor(x,y,__ATOMIC_ACQUIRE) ;
  return ret;
}
TYPE foo3(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_xor(x,y,__ATOMIC_RELEASE) ;
  return ret;
}
TYPE foo4(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_xor(x,y,__ATOMIC_ACQ_REL) ;
  return ret;
}
TYPE foo5(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_xor(x,y,__ATOMIC_SEQ_CST) ;
  return ret;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1 , a2, a4;
  a4 = 0x55;
  a0 = 0x55;
  a1 = 0x0f;
  a2 = (TYPE)foo0(&a0,a1);
  if (a2 != 0x55 || a0 != 0x5a) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a4 = 0x55;
  a0 = 0x55;
  a1 = 0x0f;
  a2 = (TYPE)foo1(&a0,a1);
  if (a2 != 0x55 || a0 != 0x5a) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a4 = 0x55;
  a0 = 0x55;
  a1 = 0x0f;
  a2 = (TYPE)foo2(&a0,a1);
  if (a2 != 0x55 || a0 != 0x5a) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a4 = 0x55;
  a0 = 0x55;
  a1 = 0x0f;
  a2 = (TYPE)foo3(&a0,a1);
  if (a2 != 0x55 || a0 != 0x5a) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a4 = 0x55;
  a0 = 0x55;
  a1 = 0x0f;
  a2 = (TYPE)foo4(&a0,a1);
  if (a2 != 0x55 || a0 != 0x5a) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a4 = 0x55;
  a0 = 0x55;
  a1 = 0x0f;
  a2 = (TYPE)foo5(&a0,a1);
  if (a2 != 0x55 || a0 != 0x5a) {
    printf("0x%x\n", (int)a4);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
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
