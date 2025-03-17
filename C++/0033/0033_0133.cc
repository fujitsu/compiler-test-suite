#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int work=0;
template <class Arg>
void f(int  (*x)(Arg)) {work++;}

int ff(int){return 1;}
int main(){
  int num=1;
#pragma omp parallel
#pragma omp critical
  f(&ff);
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
  if( work == num )
    printf("ok\n");
  else
    printf("ng\n");
}
