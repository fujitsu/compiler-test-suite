#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif
template <class T1, class T2>
struct pair {
};

template <class T1, class T2>
inline  int  operator==(const pair<T1, T2>& x, const pair<T1, T2>& y) { 
    return 1;
}

class pair<int,double> i,j;
int work=0;

void f(){
#pragma omp parallel
#pragma omp critical
  if (i == j){work++;}
}

int main(){
  int num=1;
#pragma omp parallel
  f();
#ifdef _OPENMP
  if(!omp_get_dynamic() && omp_get_nested()){
    num = pow(omp_get_max_threads(),2);
  } else if(omp_get_nested()){
    if(omp_get_num_procs() < pow(omp_get_max_threads(),2)){
      num = omp_get_num_procs();
    } else {
      num = pow(omp_get_max_threads(),2);
    }
  } else {
    num = omp_get_max_threads();
  }
#endif
  if( work == num )
    printf("ok\n");
  else
    printf("ng\n");
  return 1;
}
