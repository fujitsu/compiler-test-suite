
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
  for(i=0;i<3;i++) printf("C+D=%f\n",E[i]);
  return 0;
}

void sub1(){
  double A[3],B[3],C[3],D[3];
  int i;

  for(i=0; i<3; i++){
    A[i] = i+1;
    B[i] = i+2;
    C[i] = exp(A[i]);
    D[i] = exp(B[i]);
  }

  for(i=0;i<3;i++) printf("A=%f\n",A[i]);
  for(i=0;i<3;i++) printf("B=%f\n",B[i]);
  for(i=0;i<3;i++) printf("C=%f\n",C[i]);
  for(i=0;i<3;i++) printf("D=%f\n",D[i]);

  return;
}

double func1(int i){
  double A[3],B[3],C[3],D[3];
  double ret;

  A[i] = i+1;
  B[i] = i+2;
  C[i] = exp(A[i]);
  D[i] = exp(B[i]);
  ret = C[i]+D[i];

  return ret;
}
