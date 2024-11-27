
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],C[10];
  double L,M,N;
  int i,j,k;

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      L = i*j;
      A[j] = exp(L);
    }
    for(k=0; k<10; k++){
      M = i+k;
      B[k] = exp(M);
      N = M-1;
      C[k] = exp(N+M)+exp(M*N);
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
