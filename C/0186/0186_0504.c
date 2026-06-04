#include <stdio.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 20
#endif

int a[N],b[N];

int main()
{
  int i;

  for (i=0;i<N;i++) {
    a[i] = i;
    b[i] = i;
  }

  for (i=0;i<N;i++) {
    if (a[i] != b[i])
      puts("NG");
  }
  puts("OK");
}
