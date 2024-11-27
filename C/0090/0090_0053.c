
#include <stdio.h>
#include <math.h>

int main(){

  double A[20],B[20];
  double C[20]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
  double D[20]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
  int i,j=0;

  for(i=0;i<20;i++) A[i] = 0;
  for(i=0;i<20;i++) B[i] = 0;

  for(i=0; i<10; i++){
    A[j] = exp(C[i]);
    B[j] = exp(D[i]);
    j = j+2;
  }
  
  for(i=0;i<20;i++) printf("A=%f\n",A[i]);
  for(i=0;i<20;i++) printf("B=%f\n",B[i]);

  return 0;
}
