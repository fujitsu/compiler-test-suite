#include <iostream>
#include <omp.h>

void gemv(int n, int m, double* ret, 
	  double* mat, double* vec){
  int i;
  thread_local int j;
  thread_local double sum;

  
#pragma omp parallel for
  for(i=0; i<n; ++i){
    sum = 0.0;
    for(j=0; j<m; ++j){
      sum += mat[i * n + j] * vec[j];
    }
    ret[i] = sum;
  }
}


int main(void){
  constexpr std::size_t n = 4;
  constexpr std::size_t nm = n * n;

  double ret[n];
  double mat[nm] = { 1, 1, 1, 1,
		     2, 2, 2, 2,
		     3, 3, 3, 3,
		     4, 4, 4, 4 };
  double vec[n] = {1, 2, 3, 4};

  gemv(n, n, ret, mat, vec);

  for(int i=0; i<n; ++i){
    std::cout << ret[i] << std::endl;
  }

  std::cout << "ok" << std::endl;

  return 0;
}
