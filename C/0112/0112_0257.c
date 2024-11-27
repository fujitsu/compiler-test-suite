#include <stdio.h>
#include <math.h>
#define MAX 1000
int main()
{
  double baz[MAX],bar[MAX],foo[MAX],sub[MAX];
  int i;

  for(i=0;i<MAX;i++)
    {
      bar[i] = i;
      foo[i] = i;
    }

  for(i=0;i<MAX;i++)
    {
      baz[i] = bar[i] + foo[i];
    }

  for(i=MAX-1;i>=0;i--)
    {
      sub[i] = bar[i] - foo[i];
    }

  printf("%lf %lf\n",baz[500],sub[500]);

}
