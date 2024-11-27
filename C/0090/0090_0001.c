
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],B[100],C[100],D[100];
  int i;

  for(i=0;i<100;i++){
    C[i]=1;
    D[i]=2;
  }

  for(i=0;i<100;i++){
    A[i]=sin(C[i])+cos(C[i])+sin(D[i])+cos(D[i]);
    B[i]=pow(A[i],C[i])+pow(D[i],C[i]);
  }

  printf(" A(0)=%1.15f\n",A[0]);
  printf(" B(0)=%1.15f\n",B[0]);
  return 0;
}
  
