
#include <stdio.h>
#include <math.h>

int main(){
  double A[2][2],B[2][2],C[2][2],D[2][2],E[2][2],F[2][2],G[2][2],H[2][2],X[2][2];
  int i,j,k,l,m;
    
  k = 2;
  l = 3;
  m = 4;

  for(j=0; j<2; j++){
    for(i=0; i<2; i++ ){
      A[i][j] = i+j+3;
      B[i][j] = i+j+4;  
      C[i][j] = exp(A[i][j]);
      D[i][j] = exp(B[i][j]);
      E[i][j] = pow(k,l);
      F[i][j] = pow(l,m);
      G[i][j] = exp(E[i][j]);
      H[i][j] = exp(F[i][j]);
      X[i][j] = exp(A[i][j])+exp(B[i][j])+exp(C[i][j])+exp(F[i][j])+exp(E[i][j])+k*l;
    }
  }

  for(i=0;i<2;i++){
    for(j=0;j<2;j++){
      printf("C=%f\n",C[i][j]);
    }
  }
  for(i=0;i<2;i++){
    for(j=0;j<2;j++){
      printf("D=%f\n",D[i][j]);
    }
  }
  for(i=0;i<2;i++){
    for(j=0;j<2;j++){
      printf("G=%f\n",G[i][j]);
    }
  }
  for(i=0;i<2;i++){
    for(j=0;j<2;j++){
      printf("H=%f\n",H[i][j]);
    }
  }
  for(i=0;i<2;i++){
    for(j=0;j<2;j++){
      printf("X=%f\n",X[i][j]);
    }
  }

  return 0;
}
