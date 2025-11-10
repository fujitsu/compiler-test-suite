#include <omp.h>
#include <stdio.h>

int main(void){

  _Pragma ("omp parallel")
    _Pragma("omp master")
    {
      printf("Hello from thread %d, nthreads %d\n",
             omp_get_thread_num(), 0);
    }

  return 0;
}
