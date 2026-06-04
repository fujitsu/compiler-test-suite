#include <stdio.h>

#define IMAX  9
#define JMAX 10

int test(int);

int test(int n)
{
  return n;
}

int main(void)
{
  double a[IMAX][JMAX];
  double b[IMAX][JMAX];
  int i,j;

#pragma omp parallel for collapse(2)
  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      a[i][j]=test(i);
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      b[i][j]=test(i);
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
