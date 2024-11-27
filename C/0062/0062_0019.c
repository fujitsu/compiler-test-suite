#include <stdio.h>

#define nn 10
#define Correct_answer 20
#pragma clang fp contract(fast)

void sub01(double *a, double *b, double *c, double *d, int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i] * d[i];
  }
  return;
}

void sub02(double *a, double *b, double *c, double *d, int n)
{
#pragma clang fp contract(off)
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i] * d[i];
  }
  return;
}

void sub03(double *a, double *b, double *c, double *d, int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i] * d[i];
  }
  return;
}

int main()
{
  double a[nn], b[nn], c[nn], d[nn];
  int i,result;

  for (i=0; i<nn; i++) {
    a[i] = 0.0;
    b[i] = 1.0;
    c[i] = 1.0;
    d[i] = 1.0;
  }

  sub01(a,b,c,d,nn);
  sub02(a,b,c,d,nn);
  sub03(a,b,c,d,nn);

  result = 0.0;
  for (i=0; i<nn; i++) {
    result += a[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
