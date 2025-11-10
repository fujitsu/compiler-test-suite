#include <omp.h>
#include <stdio.h>

#define PRAGMA(x) _Pragma(#x)

int main(void){
  
  PRAGMA("omp parallel")
  printf("Hello from thread %d, nthreads %d\n", 
	 omp_get_thread_num(), omp_get_num_threads());

  return 0;
}
