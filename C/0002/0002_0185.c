#include <stdio.h>

#define N 60

#include "omp.h"

void sub(int n) {
  int total,id;
  total = omp_get_num_threads();
  id = omp_get_thread_num();
  
  printf("%d: %d/%d\n",n, id, total);
}

int main(void) {
  int i;
#pragma omp parallel for  
  for(i=0;i<N;++i) {
    sub(i);
  }
}
