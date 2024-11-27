
#include <stdio.h>
#include <math.h>

int main(){
  double A;
  double B[10],C[10],D[10],E[10],F[10],G[10],H[10],X[10];
  int k=3;
  int m=5;
  int i,j,n;

  for(i=0; i<10; i++){
    A = i+3;
    B[i] = i+1;
    C[i] = exp(A);
    D[i] = log(B[i]);
    for(j=0; j<10; j++){
      E[j] = pow(k,j)-2;
      F[j] = pow(j,m);
      G[j] = log(E[j]+2);
      H[j] = pow(F[j],j);
    }
    for(n=0; n<10; n++){
      X[n] = exp(A)+exp(B[i])+log(C[i])-exp(E[j-1]-E[j-2]-E[j-1])+pow(D[i],n);
    }
  }

  printf("A=%f\n",A);
  for(i=0;i<10;i++) printf("B=%f\n",B[i]);
  for(i=0;i<10;i++) printf("C=%f\n",C[i]);
  for(i=0;i<10;i++) printf("D=%f\n",D[i]);
  for(i=0;i<10;i++) printf("E=%f\n",E[i]);
  for(i=0;i<10;i++) printf("F=%f\n",F[i]);
  for(i=0;i<10;i++) printf("G=%f\n",G[i]);
  for(i=0;i<10;i++) printf("H=%f\n",H[i]);
  for(i=0;i<10;i++) printf("X=%f\n",X[i]);

  return 0;
}
