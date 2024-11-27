
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],C[10],D[10],G[10],H[10];
  double E[10][10],F[10][10];  
  int i,j,k,l,m,n,o;
    
  k = 2;
  l = 3;
  m = 4;

  for(i=0; i<10; i++){
    for(j=0; j<10; j++ ){
      A[i] = i+1;
      B[i] = i+2;
      C[i] = exp(A[i]);
      D[i] = exp(B[i]);
      for(n=0; n<10; n++){
        E[i][n] = pow(k,l);
        F[i][n] = pow(l,m);
	for(o=0; o<10; o++){
          G[o] = exp(E[i][n]);
        }
        H[n] = exp(F[i][n]);
      }
    }
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

  return 0;
}
