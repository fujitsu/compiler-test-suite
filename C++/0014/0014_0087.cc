#include <stdio.h>
#include <algorithm>

int main(void)
{
  bool x = 1, y = 1;
  int i;
#pragma omp simd reduction(min:x)
  for (i=0; i<10; i++) {
    x = std::min(x, (bool)i);
  }
  for (i=0; i<10; i++) {
    y = std::min(y, (bool)i);
  }
  if (x!=y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
