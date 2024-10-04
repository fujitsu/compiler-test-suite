extern int printf(const char *, ...);

#if defined(__GNUC__)


#ifndef TYPE
#define TYPE unsigned long long int
#endif

void foo0(TYPE *x,TYPE *y,TYPE *z ) {
  __atomic_exchange(x,y,z,__ATOMIC_RELAXED) ;
  return ;
}
void foo2(TYPE *x,TYPE *y, TYPE *z ) {
  __atomic_exchange(x,y,z,__ATOMIC_ACQUIRE) ;
  return ;
}
void foo3(TYPE *x,TYPE *y, TYPE *z ) {
  __atomic_exchange(x,y,z,__ATOMIC_RELEASE) ;
  return ;
}
void foo4(TYPE *x,TYPE *y, TYPE *z ) {
  __atomic_exchange(x,y,z,__ATOMIC_ACQ_REL) ;
  return ;
}
void foo5(TYPE *x,TYPE *y, TYPE *z ) {
  __atomic_exchange(x,y,z,__ATOMIC_SEQ_CST) ;
  return ;
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1 , a2, a4;
  a4 = 0x7f;
  a0 = 0x7f;
  a1 = 0x7e;
  a2 = 0x0;
  foo0(&a0,&a1,&a2);
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
  foo2(&a0,&a1,&a2);
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
  foo3(&a0,&a1,&a2);
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
  foo4(&a0,&a1,&a2);
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
  foo5(&a0,&a1,&a2);
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
