#include <stdio.h>


#define N    2
#define M    2
#define ANS  2
int main()
{
  int i;
  static int a[N], b[N];
  int sum = 0;
  
  for (i=0; i<N; i++) {
    a[i] = i % M;
    b[i%M] = i;
  }

  for (i=0; i<N; i++) {
    a[i] = b[i] + i;
  }

  for (i=0; i<N; i++) {
    sum = sum + a[i];
  }

  if (sum == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}
