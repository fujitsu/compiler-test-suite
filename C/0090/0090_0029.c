
#include <stdio.h>
#include <math.h>

int main(){
  double A[10][10],B[10][10],C[10][10];
  double L,M,N;
  int i,j,k;

  for(i=0; i<10; i++){
    L = pow(i,2);
    for(j=0; j<10; j++){
      A[j][i] = exp(L+j);
    }
    M = L-1;
    for(k=0; k<10; k++){
      B[k][i] = exp(M);
      N = M + k;
      C[k][i] = exp(N);
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
