#include <stdio.h>

typedef double Type_t;

int main(void)
{
  int i;
  const Type_t init = 1.0f;
  Type_t x = init, y = init;
  for (i=1; i<20; i++) {
    x = x * (Type_t)i;
  }
#pragma omp simd reduction(*:y)
  for (i=1; i<20; i++) {
    y = y * (Type_t)i;
  }
  if (x != y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
