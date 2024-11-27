#include <stdio.h>

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

#pragma omp parallel for simd collapse(3)
  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      for (k=0; k<10; k++) {
        y[i][j][k] = x[i][j][k];
      }
    }
  }
  if (i != 10 || j != 10 || k != 10) {
    printf("NG1 %d %d %d\n", i, j, k);
    return 1;
  }

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      for (k=0; k<10; k++) { 
        if (x[i][j][k] !=  y[i][j][k]) {
          printf("NG2\n");
          return 1;
        }
      }
    }
  }

  printf("OK\n");
  return 0;
}
