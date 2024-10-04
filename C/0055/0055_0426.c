#include <stdio.h>

#ifndef TYPE
#define TYPE signed long int
#endif

unsigned char foo0(TYPE *x,TYPE *y,TYPE z ) {
  TYPE ret ;
  ret = __atomic_compare_exchange_n(x,y,z,1,__ATOMIC_RELAXED,__ATOMIC_RELAXED) ;
 return ret;
}
unsigned char foo1(TYPE *x,TYPE *y ,TYPE z) {
  TYPE ret ;
  ret = __atomic_compare_exchange_n(x,y,z,1,__ATOMIC_CONSUME,__ATOMIC_CONSUME) ;
  return ret;
}
unsigned char foo2(TYPE *x,TYPE *y, TYPE z ) {
  TYPE ret ;
  ret = __atomic_compare_exchange_n(x,y,z,1,__ATOMIC_ACQUIRE,__ATOMIC_ACQUIRE) ;
  return ret;
}
unsigned char foo3(TYPE *x,TYPE *y, TYPE z ) {
  TYPE ret ;
  ret = __atomic_compare_exchange_n(x,y,z,1,__ATOMIC_RELEASE,__ATOMIC_RELAXED) ;
  return ret ;
}
unsigned char foo4(TYPE *x,TYPE *y, TYPE z ) {
  TYPE ret ;
  ret =__atomic_compare_exchange_n(x,y,z,1,__ATOMIC_ACQ_REL,__ATOMIC_RELAXED) ;
  return ret;
}
unsigned char foo5(TYPE *x,TYPE *y, TYPE z ) {
  TYPE ret ;
  ret = __atomic_compare_exchange_n(x,y,z,1,__ATOMIC_SEQ_CST,__ATOMIC_SEQ_CST) ;
  return ret;
}

int main() {
  TYPE a0, a1 , a2;
  unsigned char ret;

  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo0(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret=  foo1(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo2(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo3(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo4(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7f;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo5(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);

  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo0(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret=  foo1(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo2(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo3(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo4(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x3;
  printf("a0= 0x%x\n", (int)a0);
  ret = foo5(&a0,&a1,a2);
  printf("a0= 0x%x\n", (int)a0);
  printf("a1= 0x%x\n", (int)a1);
  printf("a2= 0x%x\n", (int)a2);
  printf("ret= %d\n", ret);

  return 0;
}
