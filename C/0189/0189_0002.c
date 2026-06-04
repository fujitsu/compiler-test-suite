#include <stdio.h>
#include <stdlib.h>

#define IMAX  9
#define JMAX 10
#define KMAX  5

int main(void)
{
  int a[IMAX][JMAX];
  int b[IMAX][JMAX];
  int i,j,k;

  for (k=0; k<KMAX; k++) {
#pragma omp parallel for collapse(2)
    for (i=0; i<IMAX; i++) {
      for (j=0;j<JMAX; j++) {
        a[i][j]=1;
        goto label_30;
label_30:
        ;
      }
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      b[i][j]=1;
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      if (a[i][j] != b[i][j]) {
        fprintf(stdout, "NG\n");
        return 1; 
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
