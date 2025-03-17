#include <stdio.h>
#include <algorithm>

int main(void)
{
  unsigned long x = 5ul, y = 5ul;
  int i;
#pragma omp simd reduction(max:x)
  for (i=0; i<100; i++) {
    x = std::max(x, (unsigned long)i);
  }
  for (i=0; i<100; i++) {
    y = std::max(y, (unsigned long)i);
  }
  if (x!=y) {
    printf("NG %lu %lu\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
