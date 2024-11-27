#include <stdio.h>
#include <math.h>

#define N 100
void sub(double a[], const double b[], const double c[], const double d[],
	 double x[], const double y[], const double z[],
	 const int m1[], const int m2[], const int m3[])
{
  int i;
  
  for (i=0; i<N; ++i) {
    if (m1[i] + m2[i] - m3[i] < 0) {
      a[i] = b[i] + c[i]*d[i];
    } else {
      x[i] = y[i] + z[i];
    }
  }
}

#define ANS  86.163933
#define ABSOLUTE_ERROR  0.00001
int main(void) 
{
  double a[N],b[N],c[N],d[N];
  double x[N],y[N],z[N];
  int m1[N],m2[N],m3[N];
  double res;
  int i;

  for (i=0; i<N; ++i) {
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
    x[i] = (double)i/1.0/N;
    y[i] = (double)i/2.0/N;
    z[i] = (double)i/3.0/N;
    m1[i] = i%3;
    m2[i] = i%4;
    m3[i] = i%5;
  }

  sub(a,(const double *)b,(const double *)c,(const double *)d,
      x,(const double *)y,(const double *)z,
      (const int *)m1,(const int *)m2,(const int *)m3);

  res = 0;
  for (i=0; i<N; ++i) {
    res += a[i] + x[i];
  }
  
  if (fabs(res - ANS) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS);
  }
}
