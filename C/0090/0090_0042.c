
#include <stdio.h>
#include <math.h>

int main(){
  double A[11],B[12],C[10],D[10],G[11],H[11],X[10],Y[10],Z[10];
  double E[10][10];
  double A1[11],B1[12],C1[10],D1[10],G1[11],H1[11],X1[10],Y1[10],Z1[10];
  double E1[10][10];

  int i,j,k,l,n;

  k = 2;
  l = 2;
  for(i=0;i<12;i++) B[i]=1;
  for(i=0;i<11;i++) G[i]=1;
  for(i=0;i<11;i++) H[i]=1;
  for(i=0;i<10;i++) for(j=0;j<10;j++) E[i][j] = 1; 

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      A[j] = i+1;
      B[j+2] = i+2;
      C[j] = exp(A[i]);
      D[j] = exp(B[i]);
      for(n=0; n<10; n++){
        E[n][i] = pow(n,l);
        G[n+1] = exp(E[n][i]);
        H[n+1] = exp(E[i][n]);
      }
    }
    X[i] = exp(A[i])+exp(B[i])+exp(E[2][1])+pow(k,l);
    Y[i] = exp(B[i]);
    Z[i] = exp(A[i]);
  }

  for(i=0;i<10;i++){
    printf("C=%f\n",C[i]);
  }
  for(i=0;i<10;i++){
    printf("D=%f\n",D[i]);
  }
  for(i=0;i<11;i++){
    printf("G=%f\n",G[i]);
  }
  for(i=0;i<11;i++){
    printf("H=%f\n",H[i]);
  }
  for(i=0;i<10;i++){
    printf("X=%f\n",X[i]);
  }
  for(i=0;i<10;i++){
    printf("Y=%f\n",Y[i]);
  }
  for(i=0;i<10;i++){
    printf("Z=%f\n",Z[i]);
  }

  k=2;
  l=2;
  for(i=0;i<12;i++) B1[i]=1;
  for(i=0;i<11;i++) G1[i]=1;
  for(i=0;i<11;i++) H1[i]=1;
  for(i=0;i<10;i++) for(j=0;j<10;j++) E1[i][j] = 1; 


  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      A1[j] = i+1;
      B1[j+2] = i+2;
      C1[j] = exp(A1[i]);
      D1[j] = exp(B1[i]);
      for(n=0; n<10; n++){
        E1[n][i] = pow(n,l);
        G1[n+1] = exp(E1[n][i]);
        H1[n+1] = exp(E1[i][n]);
      }
      X1[i] = exp(A1[i])+exp(B1[i])+exp(E1[2][1])+pow(k,l);
      Y1[i] = exp(B1[i]); 
      Z1[i] = exp(A1[i]);     
    }
  }
  for(i=0;i<10;i++) printf("C1=%f\n",C[i]);
  for(i=0;i<10;i++) printf("D1=%f\n",D[i]);
  for(i=0;i<11;i++) printf("G1=%f\n",G[i]);
  for(i=0;i<11;i++) printf("H1=%f\n",H[i]);
  for(i=0;i<10;i++) printf("X1=%f\n",X[i]);
  for(i=0;i<10;i++) printf("Y1=%f\n",Y[i]);
  for(i=0;i<10;i++) printf("Z1=%f\n",Z[i]);

  return 0;
}
