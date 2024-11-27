#include<stdlib.h>
#include<math.h>
#include<stdio.h>
#define MAX 20

double product(double *a);
int main()
{
  int i;
  double baz[MAX], result,absolute_error,answer;
  absolute_error = 0.0005;
  answer = 2432902008176640000.0;

  for(i=0;i<MAX;i++){
    baz[i] = i+1;
    if(baz[i]==0.00){
      baz[i]+=.01;
    }
  }

  result = product(baz);

   if (abs(answer - result ) <= absolute_error)
    printf("ok\n");
}

double product(double *a)
{
  int i;
  double temp=1;
  for(i=0;i<MAX;i++){
    temp*=a[i];
  }

  return temp;
}
