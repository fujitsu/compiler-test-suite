#include <stdio.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 20
#endif

int a[N],b[N];

void foo(int n, int x) {
  for(int i=0;i<n;i++) {
    if (x == 0) {
      a[i] = i;
    } else {
      a[i] = i+1;
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
