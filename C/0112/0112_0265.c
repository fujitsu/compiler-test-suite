#include<stdlib.h>
#include<math.h>
#include<stdio.h>
#define MAX 1000

double find_min(double *a);
int main()
{
  int i;
  double baz[MAX];

  for(i=0;i<MAX;i++){
    baz[i] = rand() % 100 + 2.3419;
  }

  printf("%lf\n",find_min(baz));

}

double find_min(double *a)
{
  int i;
  double temp=a[0];
  for(i=1;i<MAX;i++){
    if(temp>a[i]){
      temp=a[i];
    }
  }

  return temp;
}
