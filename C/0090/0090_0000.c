
#include <stdio.h>
#include <math.h>


int main(){
  double A[100],B[100],C[100],D[100],E[100];
  int i;

  for(i=0;i<100;i++){
    D[i]=1;
    E[i]=2;
  }

  for(i=0;i<100;i++){
    A[i]=sin(D[i])+cos(D[i]);
    B[i]=pow(D[i],E[i])+pow(A[i],D[i]);
    C[i]=sin(E[i])+cos(E[i]);
  }

  printf(" A[0]=%1.15f\n",A[0]);
  printf(" B[0]=%1.15f\n",B[0]);
  printf(" C[0]=%1.16f\n",C[0]);
  return 0;
}
  
