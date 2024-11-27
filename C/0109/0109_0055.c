#include <stdio.h>
#include <math.h>

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
    a[i] = b[i]/c[i];
  }
}

int check(test_t x, test_t y)
{
  double t = fabs(x-y);
  return t < 0.000001;
}

int main(void)
{
  int i;
  for(i=0;i<N;i++) {
    b[i] = 1.0;
    c[i] = 2.0;
  }
  foo();
  if (check(a[0],  0.5) && check(a[N-1],  0.5)) {
    puts("PASS");
  }
  else {
    printf("NG %g %g \n", a[0], a[N-1]);
    printf("NG %llx %llx \n", *(long long *)&a[0], *(long long *)&a[N-1]);
  }
  return 0;
}
