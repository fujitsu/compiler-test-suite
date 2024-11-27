#include <stdio.h>
#include <math.h>
#define MAX 1000

double find_max(double *a);
static double baz[MAX];
int main()
{
  int i;

  for(i=0;i<MAX;i++)
    {
      baz[i] = i;
    }
  printf("Max is %lf\n",find_max(baz));
}

double find_max(double *a)
{
  int i;
  double max=a[0];
  for(i=1;i<MAX;i++){
    if(max<a[i]){
      max=a[i];
    }
  }
  return max;
}
