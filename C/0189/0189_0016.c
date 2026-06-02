#include <stdio.h>

#define IMAX  9
#define JMAX 10
#define KMAX 11 

int main(void)
{
  int a[IMAX][JMAX][KMAX];
  int b[IMAX][JMAX][KMAX];
  int i,j,k;

  for (i=0; i<IMAX; i++) {
#pragma omp parallel for collapse(2)
    for (k=0;k<KMAX; k++) {
      for (j=0; j<JMAX; j++) {
        a[i][j][k]=1;
      }
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        b[i][j][k]=1;
      }
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0; j<JMAX; j++) {
      for (k=0; k<KMAX; k++) {
        if (a[i][j][k] != b[i][j][k]) {
          fprintf(stdout, "NG\n");
          return 1; 
        }
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
