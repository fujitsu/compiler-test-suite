
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],B[100],C[100],L[100],M[100];
  int i,j,k;

  for(i=0; i<100; i++){
    A[i] = i;
    for(j=0; j<100; j++){
      L[j] = j*2;
      B[j] = log(L[j]+1);
    }
    for(k=0; k<100; k++){
      M[k] = k+3;
      C[k] = sin(M[k]+1);
    }
  }

  for(i=0;i<100;i++)  printf("A=%f ",A[i]);
  for(i=0;i<100;i++)  printf("B=%f ",B[i]);
  for(i=0;i<100;i++)  printf("C=%f ",C[i]);
  printf("\n");

  return 0;
}
