
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],B[100],C[100];
  int i;

  for(i=0; i<100; i++){
    B[i] = (i*3)+1;
    A[i] = log(B[i]);
    C[i] = pow(A[i],B[i]);
  }

  for(i=0;i<100;i++) printf("A=%f ",A[i]);
  for(i=0;i<100;i++) printf("B=%f ",B[i]);
  for(i=0;i<100;i++) printf("C=%f ",C[i]);
  printf("\n");

  return 0;
}
