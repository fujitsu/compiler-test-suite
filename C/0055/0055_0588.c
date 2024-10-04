extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned int
#endif

unsigned char   foo0(void *x) {
  return  __atomic_is_lock_free(sizeof(char),0);
}
unsigned char   foo1(void *x) {
  return  __atomic_is_lock_free(sizeof(short int),0);
}
unsigned char   foo2(void *x) {
  return  __atomic_is_lock_free(sizeof(int),0);
}
unsigned char   foo3(void *x) {
  return  __atomic_is_lock_free(sizeof(long int),0);
}
int main() {
  char a1;
  short int a2;
  int       a3;;
  long int  a4;
  long double a5;
  a1=0;a2=0;a3=0;a4=0;a5=0;
  if (foo0(&a1)) {
    printf(" atomic_is_lock_free \n");
  }else{
    printf(" no_atomic_is_lock_free \n");
  }
  if (foo1(&a2)) {
    printf(" atomic_is_lock_free \n");
  }else{
    printf(" no_atomic_is_lock_free \n");
  }
  if (foo2(&a3)) {
    printf(" atomic_is_lock_free \n");
  }else{
    printf(" no_atomic_is_lock_free \n");
  }
  if (foo3(&a4)) {
    printf(" atomic_is_lock_free \n");
  }else{
    printf(" no_atomic_is_lock_free \n");
  }
  return 0;
}
#else
int main() {
  printf(" atomic_is_lock_free \n");
  printf(" atomic_is_lock_free \n");
  printf(" atomic_is_lock_free \n");
  printf(" atomic_is_lock_free \n");

  return 0;
}
#endif
