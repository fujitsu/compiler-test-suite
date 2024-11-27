
#include <stdio.h>
#include <math.h>

int main(){

  double A[3],B[3],C[3],D[3],E[3],F[3],G[3],H[3],X[3];
  int i,j,k,l,m;

  k=2;
  l=3;
  m=4;

  for(i=0; i<3; i++){
    A[i] = i+1;
    B[i] = i+2;
    C[i] = exp(A[i]);
    D[i] = exp(B[i]);
    for(j=0; j<3; j++){
      E[j] = pow(k,l);
      G[j] = exp(E[j]);
      F[j] = pow(l,m);
      H[j] = exp(F[j]);
    }
    X[i] = exp(A[i])+exp(B[i])+exp(C[i])+exp(E[i])+exp(F[i])+pow(k,l);
  }
  
  for(i=0;i<3;i++) printf("C=%f\n",C[i]);
  for(i=0;i<3;i++) printf("D=%f\n",D[i]);
  for(i=0;i<3;i++) printf("G=%f\n",G[i]);
  for(i=0;i<3;i++) printf("H=%f\n",H[i]);
  for(i=0;i<3;i++) printf("X=%f\n",X[i]);

  return 0;
}
