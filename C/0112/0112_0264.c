#include<stdlib.h>
#include<math.h>
#include<stdio.h>
#define MAX 1000

double sum(double *a);
int main()
{
  int i;
  double baz[MAX];

  for(i=0;i<MAX;i++){
    baz[i] = i;
  }

  printf("%lf\n",sum(baz));

}

double sum(double *a)
{
  int i;
  double temp=0;
  for(i=0;i<MAX;i++){
    temp+=a[i];
  }

  return temp;
}
