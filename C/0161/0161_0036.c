
#include <stdio.h>
#include <math.h>

extern void arrayset(int *a);
 
double vfptrans(double *x, int n)
{
  int a[2000];
  double t;
  int i;
  
  t = 0.0;
  for (i=0; i<n; ++i) {
    t += exp(x[i]);
  }
  arrayset(a);
  return t;
}

#define N 10
#define ANS   73.890561
#define PERMISSIBLE   0.00001
#define GET_ABS(a) (((a)>0) ? (a) : -(a))
int main(void) 
{
  double x[N], t;
  int i;
  
  for (i=0; i<N; ++i) {
    x[i] = 2.0;
  }
  t = vfptrans(x, N);
  if (GET_ABS(t - ANS) <= PERMISSIBLE) {
    printf("ok\n");
  } else {
    printf("ng %lf, %lf\n", t, ANS);
  }
  return 0;
}

void arrayset(int *a) 
{
  a[0] = 10;
}
