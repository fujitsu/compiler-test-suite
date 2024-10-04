extern int printf(const char *, ...);

#if defined(__GNUC__)

#ifndef TYPE
#define TYPE signed short
#endif

TYPE foo0(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_sub_fetch(x,y,__ATOMIC_RELAXED) ;
  return ret;
}
TYPE foo1(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_sub_fetch(x,y,__ATOMIC_CONSUME) ;
  return ret;
}
TYPE foo2(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_sub_fetch(x,y,__ATOMIC_ACQUIRE) ;
  return ret;
}
TYPE foo3(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_sub_fetch(x,y,__ATOMIC_RELEASE) ;
  return ret;
}
TYPE foo4(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_sub_fetch(x,y,__ATOMIC_ACQ_REL) ;
  return ret;
}
TYPE foo5(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_sub_fetch(x,y,__ATOMIC_SEQ_CST) ;
  return ret;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1 , a2, a3;
  a3 = 0x5f;
  a0 = 0x5f;
  a1 = 0x5e;
  a2 = 0x5d;
  a2 = (TYPE)foo0(&a0,a1);
  if (a2 != 0x1 | a0 != 0x1) {
    printf("0x%x\n", (int)a3);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a0 = 0x5f;
  a1 = 0x5e;
  a2 = 0x5d;
  a2 = (TYPE)foo1(&a0,a1);
  if (a2 != 0x1 | a0 != 0x1) {
    printf("0x%x\n", (int)a3);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a0 = 0x5f;
  a1 = 0x5e;
  a2 = 0x5d;
  a2 = (TYPE)foo2(&a0,a1);
  if (a2 != 0x1 | a0 != 0x1) {
    printf("0x%x\n", (int)a3);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a0 = 0x5f;
  a1 = 0x5e;
  a2 = 0x5d;
  a2 = (TYPE)foo3(&a0,a1);
  if (a2 != 0x1 | a0 != 0x1) {
    printf("0x%x\n", (int)a3);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a0 = 0x5f;
  a1 = 0x5e;
  a2 = 0x5d;
  a2 = (TYPE)foo4(&a0,a1);
  if (a2 != 0x1 | a0 != 0x1) {
    printf("0x%x\n", (int)a3);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a0);
  }
  a0 = 0x5f;
  a1 = 0x5e;
  a2 = 0x5d;
  a2 = (TYPE)foo5(&a0,a1);
  if (a2 != 0x1 | a0 != 0x1) {
    printf("0x%x\n", (int)a3);
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
