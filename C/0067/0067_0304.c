#include <stdio.h>
#include <math.h>
void a92_0(int n, double *a, double *b, double *c, double *y, double *z)
{
  int i;
#pragma omp parallel
  {
#pragma omp for schedule(static) nowait
    for (i=0; i<n; i++)
      c[i] = (a[i] + b[i]) / 2.0;
#pragma omp for schedule(static) nowait
    for (i=0; i<n; i++)
      z[i] = sqrt(c[i]);
#pragma omp for schedule(static) nowait
    for (i=1; i<=n; i++)
      y[i] = z[i-1] + a[i];
  }
}

void a92_1(int n, double *a, double *b, double *c, double *y, double *z)
{
  int i;
#pragma omp parallel
  {
#pragma omp for schedule(static,1) nowait
    for (i=0; i<n; i++)
      c[i] = (a[i] + b[i]) / 2.0;
#pragma omp for schedule(static,1) nowait
    for (i=0; i<n; i++)
      z[i] = sqrt(c[i]);
#pragma omp for schedule(static,1) nowait
    for (i=1; i<=n; i++)
      y[i] = z[i-1] + a[i];
  }
}

void a92_n(int n, double *a, double *b, double *c, double *y, double *z)
{
  int i, ck=5;
#pragma omp parallel
  {
#pragma omp for schedule(static,ck) nowait
    for (i=0; i<n; i++)
      c[i] = (a[i] + b[i]) / 2.0;
#pragma omp for schedule(static,ck) nowait
    for (i=0; i<n; i++)
      z[i] = sqrt(c[i]);
#pragma omp for schedule(static,ck) nowait
    for (i=1; i<=n; i++)
      y[i] = z[i-1] + a[i];
  }
}

#define N 1000
int main()
{
  int i;
  double a[N+1], b[N+1],c[N+1], y[N+1], z[N+1], x;

  for (i=0; i<N+1; i++) {
    a[i] = 1.0 * i;
    b[i] = 1.0 * i;
  }

  a92_0(N,a,b,c,y,z);

  for (i=1;i<N+1;i++) {
    x = sqrt((double)(i-1)) + a[i];
    if (y[i] < x - 0.001 || y[i] > x + 0.001)
      printf("a92_0 ng: i = %d y[i] = %lf x = %lf\n", i, y[i], x);
  }

  a92_1(N,a,b,c,y,z);

  for (i=1;i<N+1;i++) {
    x = sqrt((double)(i-1)) + a[i];
    if (y[i] < x - 0.001 || y[i] > x + 0.001)
      printf("a92_1 ng: i = %d y[i] = %lf x = %lf\n", i, y[i], x);
  }

  a92_n(N,a,b,c,y,z);

  for (i=1;i<N+1;i++) {
    x = sqrt((double)(i-1)) + a[i];
    if (y[i] < x - 0.001 || y[i] > x + 0.001)
      printf("a92_n ng: i = %d y[i] = %lf x = %lf\n", i, y[i], x);
  }

  printf("pass\n");
}
