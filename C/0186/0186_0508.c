#include <stdio.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 20
#endif

int a[N],b[N];

void foo(int n) {
  int i,j,k;
  for(i=0;i<n;i++) {
    for(j=0;j<3;j++) {
      a[j] = j;
    }
    for(k=0;k<N;k++) {
      b[k] = k;
    }
  }
}

int main()
{
  int i;

  for (i=0;i<N;i++) {
    a[i] = i;
    b[i] = i;
  }

  foo(N);

  for (i=0;i<N;i++) {
    if (a[i] != b[i])
      puts("NG");
  }
  puts("OK");
}
