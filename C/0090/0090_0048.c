
#include <stdio.h>
#include <math.h>

void   sub1();
double func1(int i);

int main(){
  sub1();
  return 0;
}

void sub1(){
  double A[3],B[3],C[3],D[3],E[3],F[3],G[3];
  int i;

  for(i=0; i<3; i++){
    A[i] = i+1;
    B[i] = i+2;
    C[i] = exp(A[i]);
    D[i] = exp(B[i]);
    G[i] = func1(i);
  }
  for(i=0;i<3;i++) E[i] = C[i];
  for(i=0;i<3;i++) F[i] = D[i];

  for(i=0;i<3;i++) printf("A=%f\n",A[i]);
  for(i=0;i<3;i++) printf("B=%f\n",B[i]);
  for(i=0;i<3;i++) printf("C=%f\n",C[i]);
  for(i=0;i<3;i++) printf("D=%f\n",D[i]);
  for(i=0;i<3;i++) printf("E=%f\n",E[i]);
  for(i=0;i<3;i++) printf("F=%f\n",F[i]);
  for(i=0;i<3;i++) printf("G=%f\n",G[i]);

  return;
}

double func1(int i){
  double A[3],B[3],C[3],D[3];

  A[i] = i+1;
  C[i] = exp(A[i]);
  D[i] = C[i];

  return D[i];
}

