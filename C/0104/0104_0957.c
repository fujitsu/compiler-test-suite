
#include <stdio.h>
#include <limits.h>

#define N (1024)
#define end ((unsigned int) UINT_MAX)

void for_comp (double *restrict a,double *restrict b) {
  unsigned int u, c=0,d;

  for(u=0;u<end;u++){
    c++;
    d = u % 1024;
    a[d] = b[d] ;
  }
}

int main(void) {
  printf("OK\n");
}
