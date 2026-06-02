
#include <stdio.h>
#include <omp.h>

#define N 4
#define M 2

int main() {

  int num = 0;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(int i=0; i<N; ++i) {
#else
  int i;
  for(i=0; i<N; ++i) {
#endif
      num = omp_get_thread_num(); 
      printf(" Hello world \n",num);
  }
  return 0;
}
