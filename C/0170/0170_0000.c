#include <stdio.h>

#define nn 10
#define EXPECTED_VALUE 40

void foo(double *a, double b[nn][4], int n) {
  double x;
  int i,j;

  for (i=0; i<n; i++) {
    x = 0;
    for (j=0; j<4; j++) {
      x = x + b[i][j];
    }
    a[i] = x;
  }
}

int main()
{
  double a[nn], b[nn][4];
  int i,j,result;

  for (i=0; i<nn; i++) {
    a[i] = 0.0;
    for (j=0; j<4; j++) {
      b[i][j] = 1.0;
    }
  }

  foo(a,b,nn);

  result = 0;
  for (i=0; i<nn; i++) {
    result += a[i];
  }
  
  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng foo %d\n",result);
  }

  return 0;
}
