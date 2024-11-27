#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],C[10],D[10],J[10],K[10];
  double E[10]={1,2,3,4,5,6,7,8,9,10};
  double F[10]={10,9,8,7,6,5,4,3,2,1};
  double G[10]={2,4,6,7,10,11,7,8,9,10};
  int i;


  for(i=0; i<10; i++){
    A[i] = 0;
    B[i] = 0;
    C[i] = 0;
    D[i] = 0;
    J[i] = 0;
    K[i] = 0;
  }

  for(i=0; i<3; i++){
    A[i] = exp(E[i]);
    B[i] = exp(F[i]);
    C[i] = exp(G[i]);
    J[i] = C[i];
    B[i] = exp(J[i]);
  }

  for(i=0;i<3;i++){
    printf("A1=%f\n",A[i]);
  }
  for(i=0;i<3;i++){
    printf("B1=%f\n",B[i]);
  }
  for(i=0;i<3;i++){
    printf("C1=%f\n",C[i]);
  }
  for(i=0;i<3;i++){
    printf("D1=%f\n",D[i]);
  }

  for(i=0; i<10; i++){
    A[i] = exp(E[i]);
    B[i] = exp(F[i]);
    J[i] = B[i];
    C[i] = exp(G[i]);
    D[i] = exp(J[i]-J[i]+i+G[i]);
  }

  for(i=0;i<10;i++){
    printf("A2=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B2=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("C2=%f\n",C[i]);
  }
  for(i=0;i<10;i++){
    printf("D2=%f\n",D[i]);
  }

  for(i=0; i<10; i++){
    A[i] = exp(E[i]);
    J[i] = A[i];
    B[i] = exp(F[i]);
    C[i] = exp(G[i]);
    D[i] = exp(J[i]);
    K[i] = D[i];
  }

  for(i=0;i<10;i++){
    printf("A3=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B3=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("C3=%f\n",C[i]);
  }
  for(i=0;i<10;i++){
    printf("D3=%f\n",D[i]);
  }
  for(i=0;i<5;i++){
    printf("K=%f\n",K[i]);
  }

  for(i=0; i<10; i++){
    A[i] = exp(E[i]);
    B[i] = exp(F[i]);
    C[i] = exp(G[i]);
    J[i] = C[i];
  }

  for(i=0;i<10;i++){
    printf("A4=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B4=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("C4=%f\n",C[i]);
  }

  return 0;
}
