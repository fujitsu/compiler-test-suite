
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],C[10],D[10],E[10],F[10],G[10],H[10],X[9];
  int i,j,k,l,n;

  k=2;
  l=3;
  for(i=0;i<10;i++) A[i]=3; 
  for(i=0;i<10;i++) B[i]=3; 
  for(i=0;i<10;i++) C[i]=3; 
  for(i=0;i<10;i++) D[i]=3;
  for(i=0;i<10;i++) E[i]=3; 
  for(i=0;i<10;i++) F[i]=3; 
  for(i=0;i<10;i++) G[i]=3; 
  for(i=0;i<10;i++) H[i]=3; 
  for(i=0;i<9;i++) X[i]=3; 

  for(l=0; l<10; l++){
    for(i=0; i<10; i++){
      A[i] = pow(i,2);
      B[i] = i*3;
    }
    for(j=0; j<10; j+=2){
      C[j] = exp(A[j]);
      D[j] = exp(B[j]);
      E[j] = exp(A[j]);
      F[j] = exp(B[j]);
      G[j] = E[j]+l;
      H[j] = pow(G[j],2);
    }
    for(n=0; n<9; n++){
      X[n] = exp(A[n])+exp(B[n])+pow(k,n);
    }
  }

  for(i=0;i<10;i++) printf("A=%f\n",A[i]);
  for(i=0;i<10;i++) printf("B=%f\n",B[i]);
  for(i=0;i<10;i++) printf("C=%f\n",C[i]);
  for(i=0;i<10;i++) printf("D=%f\n",D[i]);
  for(i=0;i<10;i++) printf("E=%f\n",E[i]);
  for(i=0;i<10;i++) printf("F=%f\n",F[i]);
  for(i=0;i<10;i++) printf("G=%f\n",G[i]);
  for(i=0;i<10;i++) printf("H=%f\n",H[i]);
  for(i=0;i<9;i++) printf("X=%f\n",X[i]);

  return 0;
}
