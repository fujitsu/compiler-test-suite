#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int f( void *());
int main(){
  int work=0,num=1;
#pragma omp parallel
#pragma omp atomic
  work++;
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
  if( work == num )
    printf("ok\n");
  else
    printf("ng\n");
}
