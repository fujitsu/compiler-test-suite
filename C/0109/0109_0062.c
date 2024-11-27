#include <stdio.h>
#include <math.h>

#define N 10000

double a[N];
double b[N];

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = sin(b[i]);
  }
}

int check(double x, double y)
{
  double t = fabs(x-y);
  return t < 0.000001;
}

int main(void)
{
  b[0] = 1.30;
  b[N-1] = 2.70;
  foo();
  if (check(a[0],  0.963558) && check(a[N-1],  0.42738)) {
    puts("PASS");
  }
  else {
    printf("NG %g %g \n", a[0], a[N-1]);
    printf("NG %llx %llx \n", *(long long *)&a[0], *(long long *)&a[N-1]);
  }
  return 0;
}
