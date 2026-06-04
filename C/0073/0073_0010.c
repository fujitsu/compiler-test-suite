#include <stdio.h>

#define N 1000000
static int intcpy();
int main()
{
  unsigned int d[N], s[N];
  unsigned int sum;
  int  i,j;

  for (i=0; i<N; i++) {
    d[i] = (unsigned int)i;
    s[i] = (unsigned int)(i%4);
  }

  for (i=0; i<400; i++) {
    sum = intcpy(d,s,N);
  }

  sum = 0;

  for (i=0; i<N; i++) {
    sum = sum + d[i];
  }

  if (sum == 1500000)
    printf("OK -- sum = %d\n",sum);
  else
    printf("NG -- sum = %d\n",sum);
}

static int intcpy(d, s, n)
register unsigned int *d, *s;
register long n;
{
  register int i;
  for(i = 0; i < n; i++) {
    *d++ = *s++;
  }

  return *d;
}
