#include <stdio.h>
#include <math.h>
#define MIN 100
int main()
{
  double baz[MIN][MIN],bar[MIN][MIN],foo[MIN][MIN];
  int i,j;

  for(i=0;i<MIN;i++)
    for(j=0;j<MIN;j++)
      {
        bar[i][j] = i;
        foo[i][j] = j;
      }

  for(i=0;i<MIN;i++)
    for(j=0;j<MIN;j++)
      {
        baz[i][j] = bar[i][j] + foo[i][j];
      }

  printf("%lf\n",baz[50][1]);
}
