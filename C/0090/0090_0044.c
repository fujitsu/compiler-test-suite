
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],C[10],D[10],E[10],F[10],G[10],H[10],X[9];
  int i,j,k,l,m,n,o;
  k = 2;
  l = 3;
  m = 4;





  for(l=0; l<10; l++){
    for(i=0; i<10; i++){
      A[i] = i+1;
      B[i] = i+2;
    }
    for(o=0; o<10; o++){
      C[o] = exp(A[i-1]);
      D[o] = exp(B[i-1]);
      for(j=0; j<10; j++){
        E[j] = pow(k,j);
        F[j] = pow(j,m);
        G[j] = pow(E[j],j);
        H[j] = pow(F[j],j);
      }
    }
    for(n=0; n<9; n++){
      X[n] = exp(A[i-1]) + exp(B[i-1]) + exp(E[j-1]-1000)+pow(k,n);
    }
    i=i+1;
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
