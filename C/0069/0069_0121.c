#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  unsigned int x = 5, y = 5;
  int i;
#pragma omp simd reduction(min:x)
  for (i=0; i<10; i++) {
    x = MIN(x, (unsigned int)i);
  }
  for (i=0; i<10; i++) {
    y = MIN(y, (unsigned int)i);

  }
  if (x!=y) {
    printf("NG %u %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
