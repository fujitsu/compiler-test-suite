#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define IMAX  9
#define JMAX 10
#define ERR 1.e-7

int main(void)
{
  double a[IMAX][JMAX];
  double b[IMAX][JMAX];
  int i,j;

#pragma omp parallel for collapse(2)
  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      a[i][j]=sin(i*j);
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      b[i][j]=sin(i*j);
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      if (abs(a[i][j]-b[i][j])>ERR) {
        fprintf(stdout, "NG\n");
        return 1; 
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
