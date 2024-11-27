#include <stdio.h>


#define N 2
#define ANS 1
int main()
{
  int i, s;
  static int a[N];
  
  for (i=0; i<N; i++) {
    s = i % N;
    a[i] = a[i] + s;
  }

  if (a[0]+a[1] == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}

