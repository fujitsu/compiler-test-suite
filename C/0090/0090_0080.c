
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],C[10],L[10],M[10],N[10];
  int i,j,k;

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      L[j] = i*j;
      A[j] = log(L[j]+1);
    }
    for(k=0; k<10; k++){
      M[k] = i*k;
      B[k] = pow(log(M[k]+1),log(M[k]+1));
      N[k] = M[k]*2;
      C[k] = log(N[k]+1);
    }
  }

  for(i=0;i<10;i++)  printf("A=%f ",A[i]);
  for(i=0;i<10;i++)  printf("B=%f ",B[i]);
  for(i=0;i<10;i++)  printf("C=%f ",C[i]);
  printf("\n");

  return 0;
}
