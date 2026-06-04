

#include <stdio.h>
#include <omp.h>


#define N 4
#define M 2

int main() {

  int num = 0;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  #pragma omp parallel num_threads(M)
  #pragma omp parallel for
  for(int i=0; i<N; ++i) {
#else
  int i;
  #pragma omp parallel num_threads(M)
  #pragma omp parallel for
  for(i=0; i<N; ++i) {
#endif
      num = omp_get_thread_num(); 
      printf("Hello world \n",i,num);
  }
  return 0;
}


