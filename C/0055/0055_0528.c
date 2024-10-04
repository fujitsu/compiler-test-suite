extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed int
#endif

TYPE foo0(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_nand(x,y,__ATOMIC_RELAXED) ;
  return ret;
}
TYPE foo1(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_nand(x,y,__ATOMIC_CONSUME) ;
  return ret;
}
TYPE foo2(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_nand(x,y,__ATOMIC_ACQUIRE) ;
  return ret;
}
TYPE foo3(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_nand(x,y,__ATOMIC_RELEASE) ;
  return ret;
}
TYPE foo4(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_nand(x,y,__ATOMIC_ACQ_REL) ;
  return ret;
}
TYPE foo5(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_fetch_nand(x,y,__ATOMIC_SEQ_CST) ;
  return ret;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1 , a2;
  a0 = 0x7e;
  a1 = 3;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo0(&a0,a1);
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x7e;
  a1 = 3;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo1(&a0,a1);
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x7e;
  a1 = 3;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo2(&a0,a1);
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x7e;
  a1 = 3;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo3(&a0,a1);
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x7e;
  a1 = 3;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo4(&a0,a1);
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);
  a0 = 0x7e;
  a1 = 3;
  a2 = 0;
  printf("0x%x\n", (int)a0);
  a2 = (TYPE)foo5(&a0,a1);
  printf("0x%x\n", (int)a2);
  printf("0x%x\n", (int)a0);

  return 0;
}
#endif

#else

int main() {
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0xfffffffd);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0xfffffffd);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0xfffffffd);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0xfffffffd);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0xfffffffd);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0xfffffffd);
  return 0;
}
#endif
