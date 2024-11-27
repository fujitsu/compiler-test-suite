#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  unsigned char x = 5, y = 5;
  int i;
#pragma omp simd reduction(max:x)
  for (i=0; i<10; i++) {
    x = MAX(x, (unsigned char)i);
  }
  for (i=0; i<10; i++) {
    y = MAX(y, (unsigned char)i);
  }
  if (x!=y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
