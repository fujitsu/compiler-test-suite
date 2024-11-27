#include <stdio.h>


#define N 50
#define ANS 16
int main()
{
  int i, sum;
  int a[N], b[N], c[N];

  for (i = 0; i < N; i++) {
    a[i] = i % 3;
    b[i] = i*i % 3;
    if (a[i] > b[i])
      c[i] = a[i] - b[i];
    else
      c[i] = b[i] - a[i];
  }

  sum = 0;

#pragma clang loop unroll(enable)
  for (i = 0; i < N; i++) {
    sum = sum + c[i];
    if (sum > N*N)
      sum = 0;
  }

  if (sum == ANS)
    printf("sum = %d -- OK\n", sum);
  else
    printf("NG! -- ans = %d\n", ANS);
}
