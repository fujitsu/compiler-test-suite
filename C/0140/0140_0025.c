#include <stdio.h>


#define N 100
#define ANS (double)64.0
int main()
{
  int i, j;
  double a[N], b[N], c[N];
  double sum, p, q, r;

  for (j = 0; j < N; j++) {
    a[j] = (double)(j % 3);
    b[j] = (double)(j % 3);
    c[j] = (double)0.0;
  }

  for (i = 0; i < N; i++) {
    p = (double)((int)a[1] % 2);
    q = (double)((int)a[2] % 2);
    r = (double)((int)a[3] % 2);
    for (j = 0; j < N-4; j++) {
      c[j] = b[j]*(p*a[j+1] + q*a[j+2] + r*a[j+3]);
    }
  }

  sum = (double)0.0;
  for (i = 0; i < N; i++) {
    sum = sum + c[i];
  }

  printf("sum  = %lf --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %lf\n", ANS);
  }
}
