#include <stdio.h>
#include <math.h>
#define MAX 1000

void sum_two(double *baz, double *bar, double *foo);
int i,j;
static double baz[MAX],bar[MAX],foo[MAX];
int main()
{
  for(i=0;i<MAX;i++){
    bar[i] = i;
    foo[i] = i;
  }

  sum_two(baz,bar,foo);

  printf("%lf\n",baz[500]);
}

void sum_two(double *baz, double *bar, double *foo)
{
  for(i=0;i<MAX;i++) baz[i] = bar[i] + foo[i];
}
