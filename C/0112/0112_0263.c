#include <stdio.h>
#include <math.h>
#define MAX 1000
int main()
{
  double baz[MAX],bar[MAX],foo[MAX];

  unsigned short int i;

  for(i=0;i<MAX;i++)
    {
      bar[i] = 0;
      foo[i] = 0;
    }

  for(i=0;i<MAX;i++)
    {
      baz[i] = bar[i] + foo[i];
    }
  printf("%lf \n",baz[500]);
}
