#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int work=0;
template < class T>
void f(T i){ work++;}
int main(){
  int num=1;
#pragma omp parallel
#pragma omp critical
  f(1);
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
  if( work == num )
    printf("ok\n");
  else
    printf("ng\n");
}
