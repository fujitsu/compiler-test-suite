#include <stdio.h>

#define IMAX  9
#define JMAX 10
#define KMAX 11 
#define LMAX  5

int main(void)
{
  int a[IMAX][JMAX][KMAX][LMAX];
  int b[IMAX][JMAX][KMAX][LMAX];
  int i,j,k,l;

#pragma omp parallel for collapse(4)
  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        for (l=0; l<LMAX; l++) {
          a[i][j][k][l]=1;
        }
      }
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        for (l=0; l<LMAX; l++) {
          b[i][j][k][l]=1;
        }
      }
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0; j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        for (l=0; l<LMAX; l++) {
          if (a[i][j][k][l] != b[i][j][k][l]) {
            fprintf(stdout, "NG\n");
            return 1;
          }
        }
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
