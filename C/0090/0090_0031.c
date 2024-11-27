
#include <stdio.h>
#include <math.h>

int main(){
  double A[10][10],B[10][10],C[10][10];
  double L,M,N;
  int i,j,k;

  L=3;

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      M = i+j+L;
      A[j][i] = exp(M);
      B[j][i] = exp(L+M);
    }
    for(k=0; k<10; k++){
      N = k+L;
      C[i][k] = exp(N)*exp(L+N);
    }
  }

  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      printf("A=%f\n",A[i][j]);
    }
  }

  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      printf("B=%f\n",B[i][j]);
    }
  }
  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      printf("C=%f\n",C[i][j]);
    }
  }

  return 0;
}
