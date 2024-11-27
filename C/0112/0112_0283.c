#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define MIN 100
int main()
{
  float baz[MIN],bar[MIN],foo[MIN];

  int i;

  for(i=0;i<MIN;i++)
    {
      baz[i] = sin(i);
      bar[i] = cos(i);
    }

  for(i=0;i<MIN;i++)
    {
      foo[i] = (baz[i] < bar[i]) ? baz[i] : bar[i];
    }


  printf("%lf \n",foo[50]);
}
