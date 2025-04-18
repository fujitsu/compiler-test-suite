#include <stdio.h>
#include <algorithm>

int main(void)
{
  float x = 5.0f, y = 5.0f;
  int i;
#pragma omp simd reduction(min:x)
  for (i=0; i<100; i++) {
    x = std::min(x, (float)i);
  }
  for (i=0; i<100; i++) {
    y = std::min(y, (float)i);
  }
  if (x!=y) {
    printf("NG %f %f\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
