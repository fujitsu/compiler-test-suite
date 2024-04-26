#include <stdio.h>
#include <omp.h>

int main(void){
#if !defined(__STDC_NO_ATOMICS__)
  _Atomic int x = 0;
#else
  int x = 0;
#endif
  
  omp_set_num_threads(2);

# pragma omp parallel
  {
#if defined(__STDC_NO_ATOMICS__)
    #pragma omp atomic update
#endif
    x += omp_get_thread_num();
  }

  if(x == 1){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
