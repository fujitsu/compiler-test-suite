#include <stdio.h>
#include <math.h>
#define N 5000

static int sub(double *r)
{
  int i;
  double s[N];

  for (i=0; i<N; i++) {
    s[i] = sqrt(exp(r[i]));
  }
  if ((s[0]==s[N/2-1])&&(s[N/2]==s[N-1]))
    return 0;
  else
    return 1;
}
int main()
{
  double r[N];
  int i, ng;

  for (i=0; i<N/2; i++) r[i] = 1.0;
  for (i=N/2; i<N; i++) r[i] = 2.0;

  ng = 0;
  for (i=0; i<N; i++)
    ng = ng + sub(r);
  if (ng == 0)
    printf("ok\n");
  else
    printf("ng\n");
}
