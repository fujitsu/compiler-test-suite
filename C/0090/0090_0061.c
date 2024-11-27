
#include <stdio.h>
#include <math.h>

int main(){

  double A[20];
  double B[20];
  double C[20]={1,3,2,4,7,5,6,8,9,10,11,12,13,14,15,16,17,18,19,20};
  double D[20]={2,4,8,16,1,3,6,7,5,9,10,12,11,15,13,14,17,18,19,20};
  int a=2;
  int b=5;
  int i,m;
 
  m=a*b;

  for(i=0;i<20;i++) A[i] = 0;
  for(i=0;i<20;i++) B[i] = 0;

  for(i=0; i<m; i++){
    A[i] = exp(C[i]);
    B[i] = exp(D[i]);
  }
  
  for(i=0;i<20;i++) printf("A=%f\n",A[i]);
  for(i=0;i<20;i++) printf("B=%f\n",B[i]);

  return 0;
}
