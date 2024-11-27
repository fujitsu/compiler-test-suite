#include <stdio.h>
#include <math.h>
#define MAX 1000
#define MIN 100
int main()
{
  float baz[MIN][MAX],bar[MIN][MAX],foo[MIN][MAX];
  int i,j;

  for(i=0;i<MIN;i++)
    for(j=0;j<MAX;j++)
      {
        bar[i][j] = i;
        foo[i][j] = j;
      }

  for(j=0;j<MAX;j++)
    for(i=0;i<MIN;i++)
      {
        baz[i][j] = bar[i][j] + foo[i][j];
      }

  printf("%lf\n",baz[99][999]);
}
