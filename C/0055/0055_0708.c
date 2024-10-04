extern int printf(const char *, ...);

#if defined(__GNUC__)

#ifndef TYPE
#define TYPE unsigned char
#endif
unsigned char  foo0( void *x) {
 return __atomic_test_and_set(x,__ATOMIC_ACQ_REL);
}

int main() {
  TYPE a1;

  a1 = 0x0;
  printf(" a1 = 0x%x \n", a1);
  if(foo0(&a1) == 0) {
    if (a1 != 0) {
      printf(" OK \n");    
    }else{
      printf(" NG set-val \n");    
    }
  }else{
    printf(" NG ret-val \n");    
  }
  a1 = 0x1;
  printf(" a1 = 0x%x \n", a1);
  if(foo0(&a1) != 0) {
    if (a1 != 0) {
      printf(" OK \n");    
    }else{
      printf(" NG set-val \n");    
    }
  }else{
    printf(" NG ret-val \n");    
  }

  return 0;
}
#else
int main(){
    printf(" a1 = 0x0 \n");    
    printf(" OK \n");    
    printf(" a1 = 0x1 \n");    
    printf(" OK \n");    

  return 0;
}
#endif
