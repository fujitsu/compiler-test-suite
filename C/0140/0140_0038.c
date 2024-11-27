#include <stdio.h>

#include <stdlib.h>

#define N 30
#define DNUM 3

static int unroll_loop1();
static int unroll_loop2();
static int unroll_loop3();
static double unroll_loop4();

double a[N] = {
  0.2, -0.2, 0.3, -0.3, 0.4, -0.4, 0.5, -0.5, 0.6, -0.6,
  1.0, -1.0, 2.0, -2.0, 3.0, -3.0, 4.0, -4.0, 5.0, -5.0,
  0.11, 0.23, 0.4, 0.89, 0.44, 0.7, 2.3, -8.4, 5.5, -1.0
};

double dt[N];
int main()
{
  int data1=0, data2=0, data3=0;
  int i;
  double three1[DNUM], three2[DNUM], three3[DNUM];
  double d_data;

  for (i=0; i<N; i++) {
    data1 = data1 + unroll_loop1();
    data2 = data2 + unroll_loop2();
    data3 = data3 + unroll_loop3();
  }

  three1[0] = (double)data1;
  three1[1] = (double)data2;
  three1[2] = (double)data3;
  three2[0] = (double)data1/(double)N;
  three2[1] = (double)data2/(double)N;
  three2[2] = (double)data3/(double)N;
  three3[0] = (double)(data1/N);
  three3[1] = (double)(data2/N);
  three3[2] = (double)(data3/N);

  d_data = unroll_loop4(three1) + unroll_loop4(three2) + unroll_loop4(three3);

  printf("DATA = %lf\n", d_data);
}

static int
unroll_loop1()
{
  int i;
  double b[N];
  double sum = (double)0.0;

  for (i=0; i<N; i++) {
    b[i] = (double)i / (double)N;
  }

  for (i=0; i<N-3; i++) {
    b[i] = a[i] + a[i+1]*a[i+2]*a[i+3];
  }

  for (i=0; i<N; i++) {
    sum = sum + b[i];
  }

  if (sum == (double)0.0)
    return(0);
  else
    if (sum > (double)0.0)
      return(1);
    else
      return(-1);
}

static int
unroll_loop2()
{
  int i;
  double b[N];
  double sum1=(double)0.0, sum2=(double)0.0;

  for (i=0; i<N; i++) {
    b[i] = (double)i / (double)N;
  }

  for (i=0; i<N; i++) {
    sum1 = sum1 + a[i];
    sum2 = sum2 + b[i];
  }

  if (sum1 == sum2)
    return(0);
  else
    if (sum1 > sum2)
      return(1);
    else
      return(-1);
}

static int
unroll_loop3()
{
  int i;
  double b[N];
  double p, q, r, s, t;

  for (i=0; i<N; i++) {
    b[i] = (double)i*(double)N / (double)100.0;
  }

  p = q = r = (double)0.0;
  s = b[14];
  t = b[N-1];
  for (i=0; i<N; i++) {
    p = a[i] + b[i];
    q = p + q;
    r = q + s;
    p = q + t;
    r = r + p;
  }

  if (r == b[N/2])
    return(0);
  else
    if (r > b[N/2])
      return(1);
    else
      return(-1);
}

static double
unroll_loop4(three)
double *three;
{
  register int i, j, k;
  double *p;

  for (i=0; i<DNUM; i++) {
    for (j =0; j<N; j++) {
      for (k=0; k<DNUM; k++) {
	dt[j] = dt[j] + three[i];
      }
      if (dt[j] == (double)N*(double)3.0) {
	dt[j] = a[j];
      }
      else {
	if (dt[j] > (double)N*(double)3.0) {
	  dt[j] = a[j] - three[i];
	}
      }
    }
  }

  if (dt[0] != 0) {
    p = (double *)calloc(1, sizeof(double));
    for (i=0; i<N; i++) {
      *p = *p + dt[i];
    }
    return(*p);
  }
  else {
    return((double)0.0);
  }
}
