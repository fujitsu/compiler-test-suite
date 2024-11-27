#include <stdio.h>


#define N    100
#define S     62
#define M      5
#define ANS 5809
int main()
{
  int i;
  static int a[N], b[N];
  static int sum;
  int rotation;

  
  for (i=M; i<S-M; i++) {
    a[i] = i;
  }
  for (i=M; i<S+M; i++) {
    b[i] = i;
  }


  rotation = a[N/2]+b[N/2]-2*M;
  for (i=0; i<rotation; i++) {
    a[i] = a[i] + (double)i;
    b[i] = b[i] + (double)i;
  }


#pragma clang loop unroll_count(3)
  for (i=M; i<S+M; i++) {
    a[i] = b[i] - (double)i;
    b[i] = a[i] - (double)i;
  }


  for (i=0; i<N; i++) {
    sum = sum + a[i] + b[i];
  }

  if (sum == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}
