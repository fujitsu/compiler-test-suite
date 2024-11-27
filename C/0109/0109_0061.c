#include <stdio.h>
#include <math.h>

#define N 10000

double a[N];
double b[N];
double c[N];

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = pow(b[i], c[i]);
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
    b[i] = i;
    c[i] = 2;
  }
  foo();
  if (check(a[0],pow(0,2)) && check(a[i-1],pow(i-1,2))) {
    puts("PASS");
  }
  else {
    printf("NG %g %g \n", a[0], a[N-1]);
    printf("NG %llx %llx \n", *(long long *)&a[0], *(long long *)&a[N-1]);
  }
  return 0;
}
