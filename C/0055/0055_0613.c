extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned char
#endif


TYPE foo0(TYPE *x) {
  TYPE ret ;
  ret = __atomic_load_n(x,__ATOMIC_RELAXED);
  return ret;
}
TYPE foo1(TYPE *x) {
  TYPE ret ;
  ret = __atomic_load_n(x,__ATOMIC_CONSUME);
  return ret;
}
TYPE foo2(TYPE *x) {
  TYPE ret ;
  ret = __atomic_load_n(x,__ATOMIC_ACQUIRE);
  return ret;
}
TYPE foo5(TYPE *x) {
  TYPE ret ;
  ret = __atomic_load_n(x,__ATOMIC_SEQ_CST);
  return ret;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1;
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  a1 = (TYPE)foo0(&a0);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  a1 = (TYPE)foo1(&a0);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  a1 = (TYPE)foo2(&a0);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  a1 = (TYPE)foo5(&a0);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  return 0;
}
#endif

#else

int main() {
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7f);
  return 0;
}
#endif
