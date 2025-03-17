#include <iostream>

int main(void)
{
  int i,j,k;
  const int N=10;
  int x[10][10][10], y[10][10][10];

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      for (k=0; k<N; k++) {
        x[i][j][k] = i*j*k;
      }
    }
  }

#pragma omp parallel for simd simdlen(4) aligned(x,y) private(k) collapse(2) schedule(static) ordered if(N>2) num_threads(2) default(shared) proc_bind(master)
  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      for (k=0; k<N; k++) {
        y[i][j][k] = x[i][j][k];
      }
    }
  }
  if (i != N || j != N) {
    std::cout << "NG1 " << i << " " << j << std::endl;
    return 1;
  }

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      for (k=0; k<N; k++) { 
        if (x[i][j][k] !=  y[i][j][k]) {
          std::cout << "NG2" << std::endl;
          return 1;
        }
      }
    }
  }

  std::cout << "OK" << std::endl;
  return 0;
}
