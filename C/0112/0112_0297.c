#include <stdio.h>
#include <math.h>
#define MAX 1000

void set_array(float *a);
void set_baz(float *a, float *b, float *c);
static float baz[MAX],bar[MAX],foo[MAX];
int main()
{

  set_array(bar);
  set_array(foo);
  set_baz(baz, foo, bar);
  printf("%lf \n",baz[500]);
}

void set_array(float *a)
{
  int i;
  for(i=0;i<MAX;i++){
    a[i]=0;
  }
}

void set_baz(float *a, float *b, float *c)
{
  int i;
  for(i=0;i<MAX;i++)
    {
      a[i] = b[i] + c[i];
    }
}
