#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  int i;
  int x = 5, y = 5;
  for (i=10; i<=100; i++) {
    x = MIN(x, i);
  }
#pragma omp parallel
  {
#pragma omp for simd reduction(min:y)
    for (i=10; i<=100; i++) {
      y = MIN(y, i);
    }
  }
  if (x != y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
