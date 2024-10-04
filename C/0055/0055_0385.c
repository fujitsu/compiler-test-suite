extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed long long int
#endif

TYPE foo0(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_and_fetch(x,y,__ATOMIC_RELAXED) ;
  return ret;
}
TYPE foo1(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_and_fetch(x,y,__ATOMIC_CONSUME) ;
  return ret;
}
TYPE foo2(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_and_fetch(x,y,__ATOMIC_ACQUIRE) ;
  return ret;
}
TYPE foo3(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_and_fetch(x,y,__ATOMIC_RELEASE) ;
  return ret;
}
TYPE foo4(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_and_fetch(x,y,__ATOMIC_ACQ_REL) ;
  return ret;
}
TYPE foo5(TYPE *x,TYPE y ) {
  TYPE ret ;
  ret = __atomic_and_fetch(x,y,__ATOMIC_SEQ_CST) ;
  return ret;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1 , a2, a4;
  a4 = 0x5555555555555555;
  a0 = 0x5555555555555555;
  a1 = 0xf037f037f037f037;
  a2 = (TYPE)foo0(&a0,a1);
  if (a2 != 0x5015501550155015 || a0 != 0x5015501550155015) {
    printf("0x%x\n", a4);
    printf("0x%x\n", a2);
    printf("0x%x\n", a0);
  }
  a4 = 0x5555555555555555;
  a0 = 0x5555555555555555;
  a1 = 0xf037f037f037f037;
  a2 = (TYPE)foo1(&a0,a1);
  if (a2 != 0x5015501550155015 || a0 != 0x5015501550155015) {
    printf("0x%x\n", a4);
    printf("0x%x\n", a2);
    printf("0x%x\n", a0);
  }

  a4 = 0x5555555555555555;
  a0 = 0x5555555555555555;
  a1 = 0xf037f037f037f037;
  a2 = (TYPE)foo2(&a0,a1);
  if (a2 != 0x5015501550155015 || a0 != 0x5015501550155015) {
    printf("0x%x\n", a4);
    printf("0x%x\n", a2);
    printf("0x%x\n", a0);
  }

  a4 = 0x5555555555555555;
  a0 = 0x5555555555555555;
  a1 = 0xf037f037f037f037;
  a2 = (TYPE)foo3(&a0,a1);
  if (a2 != 0x5015501550155015 || a0 != 0x5015501550155015) {
    printf("0x%x\n", a4);
    printf("0x%x\n", a2);
    printf("0x%x\n", a0);
  }

  a4 = 0x5555555555555555;
  a0 = 0x5555555555555555;
  a1 = 0xf037f037f037f037;
  a2 = (TYPE)foo4(&a0,a1);
  if (a2 != 0x5015501550155015 || a0 != 0x5015501550155015) {
    printf("0x%x\n", a4);
    printf("0x%x\n", a2);
    printf("0x%x\n", a0);
  }

  a4 = 0x5555555555555555;
  a0 = 0x5555555555555555;
  a1 = 0xf037f037f037f037;
  a2 = (TYPE)foo5(&a0,a1);
  if (a2 != 0x5015501550155015 || a0 != 0x5015501550155015) {
    printf("0x%x\n", a4);
    printf("0x%x\n", a2);
    printf("0x%x\n", a0);
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
