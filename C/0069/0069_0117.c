#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  _Bool x = 0, y = 0;
  int i;
#pragma omp simd reduction(max:x)
  for (i=0; i<10; i++) {
    x = MAX(x, (_Bool)i);
  }
  for (i=0; i<10; i++) {
    y = MAX(y, (_Bool)i);
  }
  if (x!=y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
