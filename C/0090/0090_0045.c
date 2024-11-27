
#include <stdio.h>
#include <math.h>

int main(){
  double A[11],B[11],C[11],D[11],E[11],F[10],G[10],H[10],X[9];
  int i,j,n;
  int k=2;
  int l=3;
  int m=4;

  for(i=0;i<11;i++) A[i]=4; 
  for(i=0;i<11;i++) B[i]=4; 
  for(i=0;i<11;i++) C[i]=4; 
  for(i=0;i<11;i++) D[i]=4; 
  for(i=0;i<11;i++) E[i]=0; 

  for(l=0; l<10; l++){
    for(i=0; i<10; i++){
      A[i] = i+1;
      B[i] = i+2;
    }
    for(j=0; j<10; j++){
      C[j] = exp(A[j]);
      D[j] = exp(B[j]);
      E[j] = pow(k,j);
      F[j] = pow(j,m);
      G[j] = pow(E[j],j);
      H[j] = pow(F[j],j);
    }
    for(n=0; n<9; n++){
      X[n] = exp(A[i])+exp(B[i])+exp(C[i])+exp(D[i])+exp(E[i])+pow(k,n);
    }
    i=i+1;
  }

  for(i=0;i<11;i++) printf("A=%f\n",A[i]);
  for(i=0;i<11;i++) printf("B=%f\n",B[i]);
  for(i=0;i<11;i++) printf("C=%f\n",C[i]);
  for(i=0;i<11;i++) printf("D=%f\n",D[i]);
  for(i=0;i<10;i++) printf("E=%f\n",E[i]);
  for(i=0;i<10;i++) printf("F=%f\n",F[i]);
  for(i=0;i<10;i++) printf("G=%f\n",G[i]);
  for(i=0;i<10;i++) printf("H=%f\n",H[i]);
  for(i=0;i<9;i++) printf("X=%f\n",X[i]);

  return 0;
}
