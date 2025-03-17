#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int work=0;
void  f( int i = int()){work++;}
int main(){
  int num=1;
#pragma omp parallel
#pragma omp critical
  f();
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
  if( work == num )
    printf("ok\n");
  else
    printf("ng\n");
}
