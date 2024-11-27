#include <stdio.h>
#define N 100
#define ians 125

void sub1(double * restrict a, double * restrict b, int n)
{
  int i;
  
  for (i=0; i<10; i++) {
    a[i] = a[i] + b[i];
  }
}

void sub2(double * restrict a, double * restrict b, int n)
{
  int i;
  
  for (i=0; i<11; i++) {
    a[i] = a[i] + b[i];
  }
}

void sub3(double * restrict a, double * restrict b, int n)
{
  int i;
  
  for (i=0; i<99; i++) {
    a[i] = a[i] + b[i];
  }
}

void sub4(double * restrict a, double * restrict b, int n)
{
  int i;
  
  for (i=0; i<5; i++) {
    a[i] = a[i] + b[i];
  }
}

void init(double *a, double *b)
{
  int i;

  for (i=0; i<N; i++) {
    a[i] = 0.;
    b[i] = 1.;
  }
}

int main()
{
  double a[N],b[N];
  int i,res;

  init(a,b);

  sub1(a,b,N);
  sub2(a,b,N);
  sub3(a,b,N);
  sub4(a,b,N);

  res = 0;
  for (i=0; i<N; i++) {
    res += (int)a[i];
  }

  if (res == ians) {
    printf("ok\n");
  } else {
    printf("ng : sum a == %d\n", res);
  }

  return 0;
}
