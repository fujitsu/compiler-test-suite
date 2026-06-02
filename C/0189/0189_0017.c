#include <stdio.h>

#define IMAX  9
#define JMAX 10

int main(void)
{
  int a[IMAX][1][JMAX];
  int b[IMAX][1][JMAX];
  int i,j;

#pragma omp parallel for collapse(2)
  for (j=0; j<JMAX; j++) {
    for (i=0; i<IMAX; i++) {
      a[i][0][j]=1;
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0; j<JMAX; j++) {
      b[i][0][j]=1;
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0; j<JMAX; j++) {
      if (a[i][0][j] != b[i][0][j]) {
        fprintf(stdout, "NG\n");
        return 1; 
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
