#include <stdio.h>

#define MAX 10
double sub(int n, double a[], double b[]){
  int i;
  double sum = 0.;
  for (i=0; i<n; i++){
    sum = sum + a[i] + b[i];
  }
  return sum;
}

int main(){
  int i;
  double a[MAX],b[MAX], sum;
  for(i=0; i<MAX; i++){
    a[i] = i;
    b[i] = i + 1;
  }
  sum = sub(MAX, a, b);
  
  if (sum == 100.){
    printf("OK\n");
  } else {
    printf("sum = %f NG \n",sum);
  }
  return 0;
}
