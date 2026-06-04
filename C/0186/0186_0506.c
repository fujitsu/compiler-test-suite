#include <stdio.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 20
#endif

void foo(int n, int *a) {
  int i;
  for(i=0;i<n;i++) {
    a[i] = i;
  }
}

int main()
{
  int i;
  int a[N], b[N];

  for (i=0;i<N;i++) {
    a[i] = i;
    b[i] = i;
  }

  foo(N, a);

  for (i=0;i<N;i++) {
    if (a[i] != b[i])
      puts("NG");
  }
  puts("OK");
}
