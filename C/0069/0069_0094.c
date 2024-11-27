#include <stdio.h>

typedef long double Type_t;

int main(void)
{
  int i;
  const Type_t init = (Type_t)10;
  Type_t x = init, y = init;
  for (i=1; i<=100; i++) {
    x = x + (Type_t)i;
  }
#pragma omp simd reduction(+:y)
  for (i=1; i<=100; i++) {
    y = y + (Type_t)i;
  }
  if (x != y) {
    printf("NG %Lf %Lf\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
