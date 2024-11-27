#include <stdio.h>
#include <complex.h>

typedef long double _Complex Type_t;
typedef long double Type_r;

int main(void)
{
  int i;
  const Type_t init = (Type_r)0 + (Type_r)0 * I;
  Type_t x = init, y = init;
  for (i=1; i<=100; i++) {
    x = x || ((Type_r)i + (Type_r)i * I);
  }
#pragma omp simd reduction(||:y)
  for (i=1; i<=100; i++) {
    y = y || ((Type_r)i + (Type_r)i * I);
  }
  if (x != y) {
    printf("NG (%f %f) (%f %f)\n", crealf(x), cimagf(x), crealf(y), cimagf(y));
    return 1;
  }
  printf("OK\n");
  return 0;
}
