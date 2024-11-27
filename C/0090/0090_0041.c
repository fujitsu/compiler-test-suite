
#include <stdio.h>
#include <math.h>

int main(){
  double A[11],B[11],C[10],D[10],G[10],H[10],X[10];
  double E[10][10],F[10][10];  
  int i,j,k,l;

  for(i=0;i<11;i++) A[i]=0;
  for(i=0;i<11;i++) B[i]=0;
  k = 2;
  l = 3;

  for(i=0; i<10; i++){
    A[i+1] = i+1;
    B[i+1] = i+2;
    C[i] = exp(A[i+1]);
    D[i] = exp(B[i+1]);
    for(j=0; j<10; j++){
      E[j][i] = pow(k,l);
      F[j][i] = l*k;
      G[j] = exp(E[j][i]);
      H[j] = exp(F[j][i]);
    }
    X[i] = exp(E[i][i])+k*l;
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
  for(i=0;i<10;i++){
    printf("D=%f\n",D[i]);
  }
  for(i=0;i<10;i++){
    printf("G=%f\n",G[i]);
  }
  for(i=0;i<10;i++){
    printf("H=%f\n",H[i]);
  }
  for(i=0;i<10;i++){
    printf("X=%f\n",X[i]);
  }

  return 0;
}
