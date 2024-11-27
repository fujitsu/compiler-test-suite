#include <stdio.h>
#include <math.h>
#define MAX 1000

void sum_two(float *baz, float *bar, float *foo);
int i,j;
static float baz[MAX],bar[MAX],foo[MAX];
int main()
{
  for(i=0;i<MAX;i++){
    bar[i] = i;
    foo[i] = i;
  }

  sum_two(baz,bar,foo);

  printf("%lf\n",baz[500]);
}

void sum_two(float *baz, float *bar, float *foo)
{
  for(i=0;i<MAX;i++) baz[i] = bar[i] + foo[i];
}
