#include "stdio.h"
#include "complex.h"
int main()
{
  float _Complex a[10][10],b[10][10];
  int i,j;

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      a[i][j] = 1.0 + 1.0i;
      b[i][j] = 2.0 + 2.0i;
    }
  }

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      a[i][j] = a[i][j] + b[i][j];
    }
  }

  printf("%f %f\n",creal(a[0][0]), cimag(a[0][0]));
  printf("%f %f\n",creal(a[4][4]), cimag(a[4][4]));
  printf("%f %f\n",creal(a[9][9]), cimag(a[9][9]));

  for (i=0; i<10; i++) {
    for (j=0; j<5; j++) {
      a[i][j] = a[i][j+5] + b[i][j];
    }
  }

  printf("%f %f\n",creal(a[0][0]), cimag(a[0][0]));
  printf("%f %f\n",creal(a[4][4]), cimag(a[4][4]));
  printf("%f %f\n",creal(a[5][5]), cimag(a[5][5]));

  for (i=0; i<10; i++) {
    for (j=0; j<10; j+=2) {
      a[i][j] = a[i][j] + b[i][j];
    }
  }

  printf("%f %f\n",creal(a[0][0]), cimag(a[0][0]));
  printf("%f %f\n",creal(a[1][1]), cimag(a[1][1]));
  printf("%f %f\n",creal(a[2][2]), cimag(a[2][2]));

}
