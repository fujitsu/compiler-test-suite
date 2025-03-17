#include <iostream>

int main(void)
{
  int i,j;
  int x[10][10], y[10][11];

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      x[i][j] = i*j;
    }
  }

#pragma omp for simd collapse(2)
  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      y[i][j] = x[i][j];
    }
  }
  if (i != 10 || j != 10) {
    std::cout << "NG1 " << i << " " << j << std::endl;
    return 1;
  }

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      if (x[i][j] !=  y[i][j]) {
        std::cout << "NG2" << std::endl;
        return 1;
      }
    }
  }

  std::cout << "OK" << std::endl;
  return 0;
}
