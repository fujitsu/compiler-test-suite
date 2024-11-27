
#include <stdio.h>
#include <math.h>

void   sub1();
double func1(int i);

int main(){
  double E[3];
  int i;

  sub1();
  for(i=0; i<3; i++){
    E[i] = func1(i);
  }
  for(i=0;i<3;i++) printf("E=%f\n",E[i]);
  return 0;
}

void sub1(){
  double A[3],B[3],C[3],D[3],E[3],F[3];
  int i,j;

  j=3;
  for(i=0; i<3; i++){
    E[i] = pow(i,j);
    B[i] = i+j;
    C[i] = i*j;
    D[i] = i+i;
    F[i] = j+j;
    A[i] = exp(B[i])+exp(C[i])+exp(D[i])+exp(E[i])+exp(F[i])+pow(i,j);
  }

  for(i=0;i<3;i++) printf("A=%f\n",A[i]);
  return;
}

double func1(int i){
  int j;
  double A[3],B[3],C[3],D[3],E[3],F[3];

  j=3;
  E[i] = pow(i,j);
  B[i] = i+j;
  C[i] = i*j;
  D[i] = i+i;
  F[i] = j+j;
  A[i] = exp(B[i])+exp(C[i])+exp(D[i])+exp(E[i])+exp(F[i])+pow(i,j);
  return A[i];
}

