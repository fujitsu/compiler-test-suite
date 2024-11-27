#include <stdio.h>
#include <math.h>

#define N 100
void calc_gt(double a[], const double b[], const double c[], const double d[],
	     const signed int m1[])
{
  int i;
  
  for (i=0; i<N; ++i) {
    if (m1[i] > 0) {
      a[i] = b[i] + c[i]*d[i];
    }
  }
}

void calc_ge(double a[], const double b[], const double c[], const double d[],
	     const signed int m1[])
{
  int i;
  
  for (i=0; i<N; ++i) {
    if (m1[i] >= 0) {
      a[i] = b[i] + c[i]*d[i];
    }
  }
}

void calc_lt(double a[], const double b[], const double c[], const double d[],
	     const signed int m1[])
{
  int i;
  
  for (i=0; i<N; ++i) {
    if (m1[i] < 0) {
      a[i] = b[i] + c[i]*d[i];
    }
  }
}

void calc_le(double a[], const double b[], const double c[], const double d[],
	     const signed int m1[])
{
  int i;
  
  for (i=0; i<N; ++i) {
    if (m1[i] <= 0) {
      a[i] = b[i] + c[i]*d[i];
    }
  }
}

#define ANS_GT 49.500000
#define ANS_GE 34.961575 
#define ANS_LT 42.024675
#define ANS_LE 27.486250
#define ABSOLUTE_ERROR    0.00001
int main(void) 
{
  double a[N],b[N],c[N],d[N];
  signed int m1[N];
  double res;
  int i;

  for (i=0; i<N; ++i) {
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
    m1[i] = (i%3 == 0) ? -1 : 0;
  }

  calc_gt(a,(const double *)b,(const double *)c,(const double *)d,
	  (const signed int *)m1);

  res = 0;
  for (i=0; i<N; ++i) {
    res += a[i];
  }
  
  if (fabs(res - ANS_GT) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS_GT);
  }

  for (i=0; i<N; ++i) {
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
    m1[i] = (i%3 == 0) ? -1 : 0;
  }

  calc_ge(a,(const double *)b,(const double *)c,(const double *)d,
	  (const signed int *)m1);

  res = 0;
  for (i=0; i<N; ++i) {
    res += a[i];
  }
  
  if (fabs(res - ANS_GE) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS_GE);
  }

  for (i=0; i<N; ++i) {
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
    m1[i] = (i%3 == 0) ? -1 : 0;
  }

  calc_lt(a,(const double *)b,(const double *)c,(const double *)d,
	  (const signed int *)m1);

  res = 0;
  for (i=0; i<N; ++i) {
    res += a[i];
  }
  
  if (fabs(res - ANS_LT) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS_LT);
  }

  for (i=0; i<N; ++i) {
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
    m1[i] = (i%3 == 0) ? -1 : 0;
  }

  calc_le(a,(const double *)b,(const double *)c,(const double *)d,
	  (const signed int *)m1);

  res = 0;
  for (i=0; i<N; ++i) {
    res += a[i];
  }
  
  if (fabs(res - ANS_LE) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS_LE);
  }
}
