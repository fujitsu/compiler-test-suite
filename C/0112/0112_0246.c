#include <stdio.h>
#include <math.h>
#define MAX 1000
int main()
{
  double baz[MAX],bar[MAX],foo[MAX],sub[MAX];
  int i,j;

  for(i=0;i<MAX;i++)
    {
      bar[i] = i;
      sub[i] = i;
    }

  for(i=0;i<MAX;i++) baz[i] = bar[i];
  for(i=0;i<MAX;i++) foo[i] = sub[i];

  printf("%lf %lf\n",baz[500],foo[500]);

}
