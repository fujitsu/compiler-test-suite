
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],B[100],C[100],D[100];
  int i;

  for(i=0; i<100; i++){
    B[i] = i*3;
    A[i] = exp(B[i]);
    C[i] = i+i*2*1;
    D[i] = cos(C[i]);
  }

  for(i=0;i<100;i++) printf("A=%f ",A[i]);
  for(i=0;i<100;i++) printf("B=%f ",B[i]);
  for(i=0;i<100;i++) printf("C=%f ",C[i]);
  for(i=0;i<100;i++) printf("D=%f ",D[i]);
  printf("\n");

  return 0;
}
