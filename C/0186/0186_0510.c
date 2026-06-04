#include <stdio.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 20
#endif

int a[N],b[N];

void foo(int n, int x) {
#pragma clang loop vectorize(enable)
  for(int i=0;i<n;i++) {
    if (a[i] == b[i]) {
      a[i] = a[i] + i;
      b[i] = b[i] + i;
    }
  }
}

int main()
{
  for (int i=0;i<N;i++) {
    a[i] = i;
    b[i] = i;
  }

  foo(N,0);

  for (int i=0;i<N-1;i++) {
    if (a[i] != b[i])
      puts("NG");
  }
  puts("OK");
}
