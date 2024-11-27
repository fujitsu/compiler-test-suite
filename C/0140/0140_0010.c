#include <stdio.h>


#define N   100
#define U1   52
#define U2   57
#define M     8
#define ANS 388
int main()
{
  int i, j;
  static int a[N];
  static int b[N];
  int sum = 0;
  int gl = 0;

  for (i=0; i<M; i++) {
    for (j=0; j<M; j++) {
      b[i*j] = i+j;
      gl = gl + b[i+j];
    }
  }

  for (i=0; i<N; i++) {
    a[i] = b[i];
  }

 
  for (i=0; i<U1; i++) {
    a[i] = a[i] % gl;
    sum = sum + a[i];
  }

 
  for (i=M; i<U2+M; i++) {
    a[i] = a[i] % gl;
    sum = sum + a[i];
  }

  if (sum == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}

