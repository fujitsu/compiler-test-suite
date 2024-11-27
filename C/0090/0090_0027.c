
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],C[10],L[10],M[10],N[10];
  int i,j,k;

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      L[j] = i*j;
      A[j] = exp(L[j]);
    }
    for(k=0; k<10; k++){
      M[k] = i*k;
      B[k] = exp(M[k])*exp(M[k]);
      N[k] = M[k]*2;
      C[k] = exp(N[k]);
    }
  }

  for(i=0;i<10;i++){
    printf("A=%f\n",A[i]);
  }

  for(i=0;i<10;i++){
    printf("B=%f\n",B[i]);
  }

  for(i=0;i<10;i++){
    printf("C=%f\n",C[i]);
  }


  return 0;
}
