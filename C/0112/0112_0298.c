#include<stdlib.h>
#include<math.h>
#include<stdio.h>
#define MAX 1000

float sum(float *a);
static float baz[MAX];
int main()
{
  int i;

  for(i=0;i<MAX;i++){
    baz[i] = (float)(i);
  }

  printf("%lf\n",sum(baz));

}

float sum(float *a)
{
  int i;
  float temp=0;
  for(i=0;i<MAX;i++){
    temp+=a[i];
  }

  return temp;
}
