#include <stdio.h>
#include <stdlib.h>

int main(void){
#if __GLIBC_PREREQ(2, 17)
  const size_t n = 10;
  double* x = aligned_alloc(16, n * sizeof(double));

  if(!x){
    printf("ng\n");
  } else {
    printf("ok\n");
  }
#else
  printf("ok\n");
#endif

  return 0;
}
