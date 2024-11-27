#include <stdio.h>


#define N 50
#define ANS -1859
int main()
{
  int i, j;
  int a[N], b[N], c[N], d[N];
  int sum;

  for (i = 0; i < N; i++) {
    d[i] = i;
  }

  for (j = 0; j < N; j++) {
    a[j] = j/2;
    b[j] = j/3;
    c[j] = j/4;
  }

  sum = 0;
  for (i = 0; i < N; i++) {
    if (a[i] > 2*b[i]) {
      sum = sum - c[i];
    }
    if (a[i] > 2*c[i]) {
      sum = sum + b[i];
    }
    d[i] = d[i] - sum;
  }

  for (i = 0; i < N; i++) {
    sum = sum + d[i];
  }

  printf("sum  = %d --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %d\n", ANS);
  }
}
