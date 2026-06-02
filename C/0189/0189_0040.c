#include <stdio.h>

#define IMAX  9
#define JMAX 10
#define I_UPDATE 1

int main(void)
{
  int a[IMAX][JMAX];
  int b[IMAX][JMAX];
  const int iUpdate = I_UPDATE;
  int i,j;

#pragma omp parallel for collapse(2)
  for (i=0; i<IMAX; i+=iUpdate) {
    for (j=0;j<JMAX; j++) {
      a[i][j]=1;
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
