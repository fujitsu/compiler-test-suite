#include <stdio.h>
#include <stdlib.h>

void func(void){
  printf("ok\n");
}

int main(void){
#if __GLIBC_PREREQ(2, 17)
  at_quick_exit( func );
  quick_exit(0);
#endif

  return 0;
}
