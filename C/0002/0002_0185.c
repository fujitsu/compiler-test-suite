#if defined(SIM_RUN) && defined(PTP)
#include "user.h"
#include "ptp.h"
#else
#include <stdio.h>
#define tp_printf printf
#endif
#define N 60

#include "omp.h"

void sub(int n) {
  int total,id;
  total = omp_get_num_threads();
  id = omp_get_thread_num();
  
  tp_printf("%d: %d/%d\n",n, id, total);
}

int main(void) {
  int i;
#pragma omp parallel for  
  for(i=0;i<N;++i) {
    sub(i);
  }
}
