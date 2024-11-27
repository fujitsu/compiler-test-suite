#include <stdio.h>

int main(void)
{
  int x[10];
  int tmp1 = 1;
  int tmp2[10] = {2,2,2,2,2,2,2,2,2,2};
  int i;
#pragma omp simd private(tmp1, tmp2)
  for (i=0; i<10; i++) {
    tmp1 = i;
    tmp2[i] = tmp1;
    x[i] = tmp2[i];
  }

  if (tmp1 != 1) {
    printf("NG1 %d %d\n", tmp1, x[9]);
    return 1;
  }
  for (i=1; i<10; i++) {
    if (tmp2[i] != 2) break;
  }
  if (i != 10) {
    printf("NG2 %d %d %d\n", i, tmp2[i], x[9]);
    return 1;
  }
  printf("OK\n");
  return 0;
}
