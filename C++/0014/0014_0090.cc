#include <stdio.h>
#include <algorithm>

int main(void)
{
  unsigned short x = 5, y = 5;
  int i;
#pragma omp simd reduction(min:x)
  for (i=0; i<100; i++) {
    x = std::min(x, (unsigned short)i);
  }
  for (i=0; i<10; i++) {
    y = std::min(y, (unsigned short)i);

  }
  if (x!=y) {
    printf("NG %u %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
