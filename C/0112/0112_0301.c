#include<stdlib.h>
#include<math.h>
#include<stdio.h>
#define MAX 100

float product(float *a);
static float baz[MAX];
int main()
{
  int i;

  for(i=0;i<MAX;i++){
    baz[i] = i;
    if(baz[i]==(float)0){
      baz[i]+=.01;
    }
  }

  printf("%lf\n",product(baz));

}

float product(float *a)
{
  int i;
  float temp= (float)1;
  for(i=0;i<MAX;i++){
    temp=a[i];
  }

  return temp;
}
