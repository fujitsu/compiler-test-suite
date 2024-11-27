#include <stdio.h>


#define N 50
#define ANS (double)94.0
int main()
{
  int i, j;
  double a[N];
  double sum, p, q;

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      a[j] = (double)(i % 3);
    }
    p = (double)((int)a[1] % 2);
    q = (double)((int)a[2] % 2);
    sum = (double)0.0;
    for (j = 0; j < N-3; j++) {
      sum = sum + (p*a[j+1] + q*a[j+2]);
    }
  }

  printf("sum  = %lf --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %lf\n", ANS);
  }
}
