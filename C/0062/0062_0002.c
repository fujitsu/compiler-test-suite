#include <stdio.h>
#include <math.h>

#define N 1000

void fptrans_r4toi4(float a[N], float b[N], float x)
{
  int i;
  for (i=0; i<N; ++i) {
    b[i] = a[i] - (int)(a[i]/x)*x;
  }
}

void fptrans_r8toi4(double a[N], double b[N], double x)
{
  int i;
  for (i=0; i<N; ++i) {
    b[i] = a[i] - (int)(a[i]/x)*x;
  }
}

void fptrans_r8toi8(double a[N], double b[N], double x)
{
  int i;
  for (i=0; i<N; ++i) {
    b[i] = a[i] - (long long int)(a[i]/x)*x;
  }
}


int main(void) 
{
  float r4a[N], r4b[N], r4x, r4ans, r4k;
  double r8a[N], r8b[N], r8x, r8ans, r8k;
  int i;
  const double r8g = 0.0006;
    
  for (i=0; i<N; ++i) {
    r4a[i] = 0.3f;
    r4b[i] = 0.6f;
    r8a[i] = 0.3;
    r8b[i] = 0.6;
  }
  r4x = 3.0f;
  r8x = 3.0;
  fptrans_r4toi4(r4a,r4b,r4x);
  fptrans_r8toi4(r8a,r8b,r8x);
  r4k = 0.0f;
  r8k = 0.0;
  for (i=0; i<N; ++i) {
    r4k += r4a[i];
    r8k += r8a[i];
  }
  if (fabs(r8k - (double)r4k) <= r8g) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf, %f\n", r8k, r4k);
  }
  for (i=0; i<N; ++i) {
    r8a[i] = 0.3;
  }
  fptrans_r8toi8(r8a,r8b,r8x);
  if (fabs(r8k - (double)r4k) <= r8g) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf, %f\n", r8k, r4k);
  }
  return 0;
}
