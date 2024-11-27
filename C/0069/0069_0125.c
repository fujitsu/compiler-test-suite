#include <stdio.h>

int main(void)
{
  int i,j;
  int x[10][10], y[10][10];

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      x[i][j] = i*j;
    }
  }

#pragma omp simd collapse(2)
  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      y[i][j] = x[i][j];
    }
  }
  if (i != 10 || j != 10) {
    printf("NG1 %d %d\n", i, j);
    return 1;
  }

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      if (x[i][j] !=  y[i][j]) {
        printf("NG2\n");
        return 1;
      }
    }
  }

  printf("OK\n");
  return 0;
}
