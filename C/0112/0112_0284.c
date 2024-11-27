#include <stdio.h>
#include <math.h>
#define MIN 100
int main()
{
  float baz[MIN],bar[MIN],foo[MIN],sub[MIN];

  int i,j;

  for(i=0;i<MIN;i++)
    {
      baz[i] = sin(i);
      bar[i] = cos(i);
      foo[i] = 0;
      sub[i] = 0;
    }

  for(i=0;i<MIN;i++)
    {
      if (baz[i] < bar[i])
        {
          foo[i] = baz[i];
        }
      else
        {
          sub[i] = bar[i];
        }
    }

  for(i=10;i<20;i++) printf("%lf %lf \n",foo[i],sub[i]);

}
