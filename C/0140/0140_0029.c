#include <stdio.h>


#define N 50
#define ANS (double)25.0
int main()
{
  int i;
  double a[N];
  double sum = (double)0.0;

  for (i = 0; i < N; i++) {
    a[i] = (double)(i%2);
  }

  for (i = 0; i < N; i++) {
    sum = a[i] - sum;
  }

  printf("sum  = %lf --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %lf\n", ANS);
  }
}
