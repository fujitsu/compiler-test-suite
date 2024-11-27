#include <stdio.h>
#include <math.h>
#define MAX 1000
int main()
{
  float baz[MAX],bar[MAX],foo[MAX];
  int i,j;

  for(i=0;i<MAX;i++)
    {
      baz[i] = (float)i;
      bar[i] = (float)i;
      foo[i] = (float)i;
    }

  for(i=0;i<500;i++)
    {
      baz[i] = baz[i+1] + bar[i] + foo[i];
    }

  printf("%lf\n",baz[250]);

}
