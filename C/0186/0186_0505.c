#include <stdio.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 100
#endif

int a[N],b[N];

void foo(int n) {
#pragma omp parallel for
  for(int i=0;i<n;i=i+10) {
    a[i] = b[i];
  }
}

int main()
{
  for (int i=0;i<N;i++) {
    a[i] = i;
    b[i] = i;
  }

  foo(N);

  for (int i=0;i<N;i++) {
    if (a[i] != b[i])
      puts("NG");
  }
  puts("OK");
}
