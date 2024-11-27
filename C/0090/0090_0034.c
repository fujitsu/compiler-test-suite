
#include <stdio.h>
#include <math.h>

int main(){
  double A[10];
  double C[10]={1,2,3,4,5,6,7,8,9,10};
  int i;

  for(i=0; i<10; i++){
    A[i] = exp(C[i]);
  }

  for(i=0;i<10;i++){
    printf("dexp A=%f\n",A[i]);
  }

  return 0;
}
