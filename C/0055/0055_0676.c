extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE signed int
#endif

void foo1( TYPE *x, TYPE y) {
  __atomic_store_n(x,y,__ATOMIC_CONSUME);
}
void foo2( TYPE *x, TYPE y) {
  __atomic_store_n(x,y,__ATOMIC_ACQUIRE);
}
void foo4( TYPE *x, TYPE y) {
  __atomic_store_n(x,y,__ATOMIC_ACQ_REL);
}

#ifndef NO_EXEC
int main() {
  TYPE a0, a1;
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo1(&a0,a1);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo2(&a0,a1);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);
  a0 = 0x7f;
  a1 = 0x7e;
  printf("0x%x\n", (int)a0);
  foo4(&a0,a1);
  printf("0x%x\n", (int)a1);
  printf("0x%x\n", (int)a0);

  return 0;
}
#endif

#else

int main() {
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7f);
  printf("0x%x\n", 0x7e);
  printf("0x%x\n", 0x7e);

  return 0;
}
#endif
