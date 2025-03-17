#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

class B {public: int i;  B():i(10){} }bobj;
extern B carray2[];

int main(){
  int work = 0;
#pragma omp parallel
#pragma omp atomic
  work++;

  int num = 1;
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif

  if ( num == work )
    printf("ok\n");
  else
    printf("ng\n");

  return 0;
}





