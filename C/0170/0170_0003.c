#include <stdio.h>
#define n 100

int main()
{
  double a1[4];
  double a21[n][4];
  double a22[n][4];
  double a31[n][n][4];
  double a32[n][4][4];
  double a33[4][4][4];

  int i,j,k;


  for (i=0; i<4; i++) {
    a1[i] = 1.0;
  }


  for (i=0; i<4; i++) {
    for (j=0; j<4; j++) {
      a21[i][j] = 1.0;
    }
  }


  for (i=0; i<n; i++) {
    for (j=0; j<4; j++) {
      a22[i][j] = 1.0;
    }
  }


  for (i=0; i<n; i++) {
    for (j=0; j<n; j++) {
      for (k=0; k<4; k++) {
	a31[i][j][k] = 1.0;
      }
    }
  }


  for (i=0; i<n; i++) {
    for (j=0; j<4; j++) {
      for (k=0; k<4; k++) {
	a32[i][j][k] = 1.0;
      }
    }
  }


  for (i=0; i<4; i++) {
    for (j=0; j<4; j++) {
      for (k=0; k<4; k++) {
	a33[i][j][k] = 1.0;
      }
    }
  }

  printf("%f\n",a1[1]);
  printf("%f\n",a21[1][1]);
  printf("%f\n",a22[1][1]);
  printf("%f\n",a31[1][1][1]);
  printf("%f\n",a32[1][1][1]);
  printf("%f\n",a33[1][1][1]);

  return 0;
}
