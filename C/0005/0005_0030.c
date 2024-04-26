#include <stdio.h>
#include <stdlib.h>

void func1(void){
  printf("o");
}

void func2(void){
  printf("k");
}

void func3(void){
  printf("\n");
}

int main(void){
#if __GLIBC_PREREQ(2, 17)
  at_quick_exit( func3 );
  at_quick_exit( func2 );
  at_quick_exit( func1 );

  printf("ok\n");
#endif

  return 0;
}
