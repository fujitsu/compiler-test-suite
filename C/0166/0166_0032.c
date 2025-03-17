#include <stdio.h>

#pragma loop unroll (1)
int main(void)
{
  int i,j;
  double a[100][100]={1.0};
  double b[100][100]={1.0};

  for (i=1; i<100; i++) {
    for (j=1; j<100; j++) {
      a[i][j]=a[i-1][j-1]+a[i-1][j-1]/2.+1.;
    }
  }

#pragma loop unroll (2)
  for (i=1; i<100; i++) {
    for (j=1; j<100; j++) {
      b[i][j]=b[i-1][j-1]+b[i-1][j-1]/2.+1.;
    }
  }

  for (i=1; i<100; i++) {
    for (j=1; j<100; j++) {
      if (j == 50) fprintf(stdout, "%f ", a[i][j]);
      if (a[i][j] != b[i][j]) {
        fprintf(stdout, "\nNG: %d %d %f %f\n", i, j, a[i][j], b[i][j]);
        return 1;
      }
    }
  }
  fprintf(stdout, "\nOK\n");
  return 0;
}
