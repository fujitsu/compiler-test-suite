#include <stdio.h>

#define IMAX  9
#define JMAX 10
#define KMAX 11 
#define LMAX  5
#define MMAX  4

int main(void)
{
  int a[IMAX][JMAX][KMAX][LMAX][MMAX];
  int b[IMAX][JMAX][KMAX][LMAX][MMAX];
  int i,j,k,l,m;

#pragma omp parallel for collapse(5)
  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        for (l=0; l<LMAX; l++) {
         for (m=0; m<MMAX; m++) {
          a[i][j][k][l][m]=1;
         }
        }
      }
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        for (l=0; l<LMAX; l++) {
         for (m=0; m<MMAX; m++) {
          b[i][j][k][l][m]=1;
         }
        }
      }
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0; j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        for (l=0; l<LMAX; l++) {
          for (m=0; m<MMAX; m++) { 
            if (a[i][j][k][l][m] != b[i][j][k][l][m]) {
              fprintf(stdout, "NG\n");
              return 1;
            }
          }
        }
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
