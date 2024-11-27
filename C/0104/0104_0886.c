
#include <stdio.h>

#define N 10000

void foo(double *restrict src) {
  int i;
  for(i=0;i<N;++i) {
    src[i] = i*i;
  }
}

int main(void){
  printf("OK\n");
  return 0;
}



