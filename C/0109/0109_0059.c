#include <stdio.h>
#include <math.h>

#define N 10003

double a[N];
double b[N];

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = fmod(b[i],a[i]);
  }
}

int check(double x, double y)
{
  double t = fabs(x-y);
  return t < 0.000001;
}

int main(void)
{
  int i;
  for(i=0;i<N;i++) {
    b[i] = 1.30;
    a[i] = 2.0;
  }
  foo();
  if (check(a[0],1.3) && check(a[N-1], 1.3)) {
    puts("PASS");
  }
  else {
    printf("NG %g %g \n", a[0], a[N-1]);
    printf("NG %llx %llx \n", *(long long *)&a[0], *(long long *)&a[N-1]);
  }
  return 0;
}
