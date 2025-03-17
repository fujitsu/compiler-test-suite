#include <iostream>

int main(void)
{
  int i,j,k;
  int x[10][10][10], y[10][10][10];

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      for (k=0; k<10; k++) {
        x[i][j][k] = i*j*k;
      }
    }
  }

#pragma omp for simd safelen(2) aligned(x,y) private(k) schedule(static) ordered nowait collapse(2)
  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      for (k=0; k<10; k++) {
        y[i][j][k] = x[i][j][k];
      }
    }
  }
  if (i != 10 || j != 10) {
    std::cout << "NG1 " << i << " " << j << std::endl;
    return 1;
  }

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      for (k=0; k<10; k++) { 
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
