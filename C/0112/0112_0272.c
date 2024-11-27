#include <stdio.h>
#include <math.h>
#define MAX 1000

float find_max(float *a);
int main()
{
  float baz[MAX];
  int i;

  for(i=0;i<MAX;i++)
    {
      baz[i] = i;
    }
  printf("Max is %lf\n",find_max(baz));
}

float find_max(float *a)
{
  int i;
  float max=a[0];
  for(i=1;i<MAX;i++){
    if(max<a[i]){
      max=a[i];
    }
  }
  return max;
}
