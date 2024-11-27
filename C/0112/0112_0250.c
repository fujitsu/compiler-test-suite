#include <stdio.h>
#include <math.h>
#define MIN 100
int main()
{
  double baz[100],bar[100],foo[100];

  int i,j;

  for(i=0;i<100;i++)
    {
      baz[i] = sin(i);
      bar[i] = cos(i);
    }

  for(i=0;i<100;i++)
    {
      foo[i] = (baz[i] < bar[i]) ? baz[i] : bar[i];
    }

  printf("%lf \n",foo[50]);
}
