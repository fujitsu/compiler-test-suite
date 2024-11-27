
#include <stdio.h>
#include <math.h>

int main(){
  double A[10][10],B[10][10],C[10][10];
  double L,M;
  int i,j;

  L=2;
  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      B[i][j] = 1;
    }
  }

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      A[j][i] = exp(L);
      B[j][i] = exp(L);
      M = pow(L,L);
      C[j][i] = exp(A[j][i]+B[j][i]);
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
  printf("M=%f\n",M);

  return 0;
}
