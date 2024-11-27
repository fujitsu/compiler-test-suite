#include <stdio.h>


#define N    100
#define U     52
#define T     64
#define S     62
#define M      5
#define ANS   22
int main()
{
  int i;
  static double a[N], b[N];
  static double sum;
  
  for (i=0; i<N; i++) {
    a[i] = (double)(i + 1)/(double)N;
    b[i] = (double)(i - 1)/(double)N;
  }


  for (i=M; i<U+M; i++) {
    a[i] = a[i]/(double)i;
    b[i] = b[i]/(double)i;
  }


  for (i=2*M; i<T+2*M; i++) {
    a[i] = b[i];
    b[i] = a[i];
  }


  for (i=3*M; i<S+3*M; i++) {
    a[i] = a[i]/(double)i;
    b[i] = b[i]/(double)i;
  }

  for (i=2*M; i<N-2*M; i++) {
    sum = sum + a[i] + b[i];
  }

  if ((int)sum == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}
