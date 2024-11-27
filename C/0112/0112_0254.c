#include <stdio.h>
#include <math.h>
#define MAX 1000
int main()
{
  double baz[MAX],bar[MAX],foo[MAX];
  int i,j;

  for(i=0;i<MAX;i++)
    {
      baz[i] = i;
      bar[i] = i;
      foo[i] = i;
    }

  for(i=1;i<MAX;i++)
    {
      baz[i] = baz[i-1] + bar[i] + foo[i];
    }

  printf("%lf\n",baz[250]);
}
