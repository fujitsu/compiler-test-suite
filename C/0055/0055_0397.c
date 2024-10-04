
extern int printf(const char *, ...);

#if defined(__GNUC__)


#ifndef TYPE
#define TYPE signed char
#endif

unsigned char foo0(TYPE *x,TYPE *y,TYPE *z ) {
  TYPE ret ;
  ret = __atomic_compare_exchange(x,y,z,0,__ATOMIC_RELAXED,__ATOMIC_RELAXED) ;
 return ret;
}
unsigned char foo1(TYPE *x,TYPE *y ,TYPE *z) {
  TYPE ret ;
  ret = __atomic_compare_exchange(x,y,z,0,__ATOMIC_CONSUME,__ATOMIC_CONSUME) ;
  return ret;
}
unsigned char foo2(TYPE *x,TYPE *y, TYPE *z ) {
  TYPE ret ;
  ret = __atomic_compare_exchange(x,y,z,0,__ATOMIC_ACQUIRE,__ATOMIC_ACQUIRE) ;
  return ret;
}
unsigned char foo5(TYPE *x,TYPE *y, TYPE *z ) {
  TYPE ret ;
  ret = __atomic_compare_exchange(x,y,z,0,__ATOMIC_SEQ_CST,__ATOMIC_SEQ_CST) ;
  return ret;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1 , a2, a3;
  unsigned char ret;

  a3 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  ret = foo0(&a0,&a1,&a2);
  if (a0 != 0x3 | a1 != 0x7f | a2 != 0x3 | ret != 1) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
  }
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  ret=  foo1(&a0,&a1,&a2);
  if (a0 != 0x3 | a1 != 0x7f | a2 != 0x3 | ret != 1) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
  }
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  ret = foo2(&a0,&a1,&a2);
  if (a0 != 0x3 | a1 != 0x7f | a2 != 0x3 | ret != 1) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
  }
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  ret = foo5(&a0,&a1,&a2);
  if (a0 != 0x3 | a1 != 0x7f | a2 != 0x3 | ret != 1) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
  }

  a0 = 0x7f;
  a1 = 0x5e;
  a2 = 0x3;
  ret = foo0(&a0,&a1,&a2);
  if (a0 != 0x7f | a1 != 0x7f | a2 != 0x3 | ret != 0) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
  }
  a0 = 0x7f;
  a1 = 0x5e;
  a2 = 0x3;
  ret=  foo1(&a0,&a1,&a2);
  if (a0 != 0x7f | a1 != 0x7f | a2 != 0x3 | ret != 0) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
  }
  a0 = 0x7f;
  a1 = 0x5e;
  a2 = 0x3;
  ret = foo2(&a0,&a1,&a2);
  if (a0 != 0x7f | a1 != 0x7f | a2 != 0x3 | ret != 0) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
  }
  a0 = 0x7f;
  a1 = 0x5e;
  a2 = 0x3;
  ret = foo5(&a0,&a1,&a2);
  if (a0 != 0x7f | a1 != 0x7f | a2 != 0x3 | ret != 0) {
    printf("a0= 0x%x\n", (int)a3);
    printf("a0= 0x%x\n", (int)a0);
    printf("a1= 0x%x\n", (int)a1);
    printf("a2= 0x%x\n", (int)a2);
    printf("ret= %d\n", ret);
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
