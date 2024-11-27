#include <stdio.h>
#include <math.h>
#include <complex.h>

#define N 10000

typedef double _Complex  test_t ;

test_t a[N];
test_t b[N];
test_t c[N];

void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i++) {
    a[i] = cacos(b[i]);
  }
}

int check(test_t x, test_t y)
{
  double t = fabs(x-y);
  return t < 0.0001;
}

int main(void)
{
  int i;
  for(i=0;i<N;i++) {
    b[i] = 0.1;
    c[i] = 0.2;
  }
  foo();
  if (check(a[0], 1.47063) && check(a[N-1],  1.47063)) {
    puts("PASS");
  }
  else {
    printf("NG %g %g \n", a[0], a[N-1]);
    printf("NG %llx %llx \n", *(long long *)&a[0], *(long long *)&a[N-1]);
  }
  return 0;
}
