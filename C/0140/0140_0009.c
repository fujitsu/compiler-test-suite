#include <stdio.h>


#define N   100
#define M     8
#define ANS 173
int main()
{
  int i, j;
  static int a[N];
  static int b[N];
  int sum = 0;

  for (i=0; i<M; i++) {
    for (j=0; j<M; j++) {
      b[i*j] = i+j;
    }
  }

  for (i=0; i<N; i++) {
    a[i] = b[i];
  }

  for (i=M; i<M*M; i++) {
    sum = sum + a[i];
  }

  if (sum == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}

