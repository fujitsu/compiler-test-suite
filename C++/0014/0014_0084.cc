#include <stdio.h>
#include <algorithm>

int main(void)
{
  wchar_t x = 5, y = 5;
  int i;
#pragma omp simd reduction(min:x)
  for (i=0; i<100; i++) {
    x = std::min(x, (wchar_t)i);
  }
  for (i=0; i<100; i++) {
    y = std::min(y, (wchar_t)i);
  }
  if (x!=y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
