#include <stdio.h>

#define nn 10
#define Correct_answer 220

void sub01(double *a, double *b, int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i];
  }
  return;
}

void sub02(double *a, double *b, int n)
{
#pragma clang fp contract(fast)
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i];
  }
  return;
}

void sub03(double *a, double *b, int n)
{
#pragma clang fp contract(off)
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i];
  }
  return;
}

void sub04(double *a, double *b, double *c, double *d, int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i] * d[i];
  }
  return;
}

void sub05(double *a, double *b, double *c, double *d, int n)
{
#pragma clang fp contract(fast)
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i] * d[i];
  }
  return;
}

void sub06(double *a, double *b, double *c, double *d, int n)
{
#pragma clang fp contract(off)
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i] * d[i];
  }
  return;
}

void sub07(double a[nn][nn], double b[nn][nn], double c[nn][nn], double d[nn][nn], int n)
{
#pragma clang fp contract(fast)
  int i,j;
  for (i=0; i<n; i++) {
#pragma clang fp contract(off)
    for (j=0; j<n; j++) {
      a[i][j] = b[i][j] + c[i][j] * d[i][j];
    }
  }
  return;
}

void sub08(double a[nn][nn], double b[nn][nn], double c[nn][nn], double d[nn][nn], int n)
{
#pragma clang fp contract(off)
  int i,j;
  for (i=0; i<n; i++) {
#pragma clang fp contract(fast)
    for (j=0; j<n; j++) {
      a[i][j] = b[i][j] + c[i][j] * d[i][j];
    }
  }
  return;
}

int main()
{
  double a[nn], b[nn], c[nn], d[nn];
  double a1[nn][nn], b1[nn][nn], c1[nn][nn], d1[nn][nn];
  int i,j,result1,result2,result;

  for (j=0; j<nn; j++) {
    a[j] = 0.0;
    b[j] = 1.0;
    c[j] = 1.0;
    d[j] = 1.0;
  }
  for (i=0; i<nn; i++) {
    for (j=0; j<nn; j++) {
      a1[i][j] = 0.0;
      b1[i][j] = 1.0;
      c1[i][j] = 1.0;
      d1[i][j] = 1.0;
    }
  }

  sub01(a,b,nn);
  sub02(a,b,nn);
  sub03(a,b,nn);
  sub04(a,b,c,d,nn);
  sub05(a,b,c,d,nn);
  sub06(a,b,c,d,nn);
  sub07(a1,b1,c1,d1,nn);
  sub08(a1,b1,c1,d1,nn);

  result1 = 0.0;
  result2 = 0.0;
  for (i=0; i<nn; i++) {
    result1 += a[i];
  }
  for (i=0; i<nn; i++) {
    for (j=0; j<nn; j++) {
      result2 += a1[i][j];
    }
  }

  result = result1 + result2;
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
