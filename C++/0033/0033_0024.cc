#include <iostream>

#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int count = 0;
int (*func(int i))[]{ 
#pragma omp parallel
#pragma omp atomic
  count += i;
  return 0;
}
int (*func())[10]{
#pragma omp parallel
#pragma omp atomic
  count += 20;
  return 0;
}
int main(){
 int (*p)[];
 int (*pp)[10];
 int work = 30;

#pragma omp parallel
  p = func(10);
#pragma omp parallel
  pp = func();

#ifdef _OPENMP
  if ( !omp_get_dynamic() && omp_get_nested() ){
    work = pow(omp_get_max_threads(), 2) * work;
  } else if ( omp_get_nested()){
    if ( omp_get_num_procs() >= pow(omp_get_max_threads(),2) ){
      work = pow(omp_get_max_threads(),2) * work;
    } else {
      work = omp_get_num_procs() * work;
    }
  } else {
    work = omp_get_max_threads() * work;
  }
#endif

  if (count == work )
    std::cout << "ok\n";
  else
    std::cout << "ngk\n";
}
