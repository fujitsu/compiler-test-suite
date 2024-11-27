#include <stdio.h>
#include <math.h>

void sub(double *a, const double *b, const double *c, const double *d, const double *x, const int n)
{
  int i;
  
  for (i=0; i<n; ++i) {
    if (x[i] >= 0.0) {
      a[i] = b[i] + c[i]*d[i];
    } else {
      a[i] = b[i];
    }
  }
}

#define N   10000
#define ANS 2777.486112
#define ABSOLUTE_ERROR   0.00001
int main(void) 
{
  double a[N],b[N],c[N],d[N],x[N];
  double res;
  int i;

  for (i=0; i<N; ++i) {
    x[i] = (double)(i%3);
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
  }
  
  sub(a,b,c,d,x,N);

  res = 0;
  for (i=0; i<N; ++i) {
    res += a[i];
  }
  
  if (fabs(res - ANS) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS);
  }
}
