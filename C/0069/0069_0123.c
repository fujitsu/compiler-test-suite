#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  int i;
  int x = 5, y = 5;
  for (i=1; i<=100; i++) {
    x = MAX(x, i);
  }
#pragma omp parallel for simd reduction(max:y)
  for (i=1; i<=100; i++) {
    y = MAX(y, i);
  }
  if (x != y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
