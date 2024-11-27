#include <stdio.h>
#include <math.h>
#define MIN 100
int main()
{
  double baz[MIN][MIN],bar[MIN][MIN];
  double foo[MIN],sub[MIN];

  int i,j;

  for(i=0;i<MIN;i++) sub[i] = i;
  for(i=0;i<MIN;i++)
    for(j=0;j<MIN;j++)
      {
        bar[i][j] = i + j;
      }

  for(i=0;i<MIN;i++)
    {
      foo[i] = sub[i];
      for(j=0;j<MIN;j++)
        {
          baz[i][j] = bar[i][j];
        }
    }

  printf("%lf %lf\n",baz[50][1],foo[50]);

}

