#include<stdlib.h>
#include<math.h>
#include<stdio.h>
#define MAX 1000

float find_min(float *a);
static float baz[MAX];
int main()
{
  int i;

  for(i=0;i<MAX;i++){
    baz[i] = rand() % 100 + 2.3419;
  }

  printf("%lf\n",find_min(baz));

}

float find_min(float *a)
{
  int i;
  float temp=a[0];
  for(i=1;i<MAX;i++){
    if(temp>a[i]){
      temp=a[i];
    }
  }

  return temp;
}
