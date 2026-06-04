#include <stdio.h>

void xxx(int m,int n,int a[m][n]);

void xxx(int m,int n,int a[m][n])
{
  int i,j;

#pragma omp parallel for collapse(2)
  for (i=0; i<m; i++) {
    for (j=0; j<n; j++) {
      a[i][j]=1;
    }
  }
}

int main(void)
{
  int IMAX=9;
  int JMAX=10;
  int a[IMAX][JMAX];
  int b[IMAX][JMAX];
  int i,j;

  xxx(IMAX, JMAX, a);

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
