#include <stdio.h>

int main(void)
{
  int x[10];
  const int ans = 1;
  int tmp = ans;
  int i;
#pragma omp simd private(tmp)
  for (i=0; i<10; i++) {
    tmp = i;
    x[i] = tmp;
  }
  if (tmp != ans) {
    printf("NG %d %d\n", tmp, x[9]);
    return 1;
  }
  printf("OK\n");
  return 0;
}
