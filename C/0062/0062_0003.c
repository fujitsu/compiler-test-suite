#include <math.h>
#include <stdio.h>
#define N 1000
static void sub(double a[N], long long int ia[N]) 
{
  int i;
  for (i=0; i<N; i+=4) {
    a[i] = a[i] + (double)(ia[i] * 3);
  }
}

int main(void) 
{
  double a[N], r;
  long long int ia[N];
  int i;
  const double ans = 775.0;
  const double absolute_error = 0.0000001;
  
  for (i=0; i<N; i+=4) {
    a[i] = 0.1;
    ia[i] = 1;
  }
  sub(a, ia);
  r = 0.0;
  for (i=0; i<N; i+=4) {
    r = r + a[i];
  }
  if (fabs(ans - r) <= absolute_error) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf, %lf\n", r, ans);
  }
  return 0;
}
