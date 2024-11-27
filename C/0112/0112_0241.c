#include <stdio.h>
#include <math.h>
#define MAX 1000

double baz[MAX],bar[MAX],foo[MAX];

void sub(int i);
int main()
{
  int i,j;

  for(i=0;i<MAX;i++)
    {
      bar[i] = i;
    }

  for(i=0;i<MAX;i++)
    {
      sub(i);
    }

  printf("%lf \n",baz[500]);
}

void sub(int i)
{
  baz[i] = bar[i];
}
