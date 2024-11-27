
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],C[10],E[10],F[10],G[10];
  double D[10]={1,2,3,4,5,6,7,8,9,10};
  double B[10]={5,6,7,8.9,10,11,12,13,14};
  int i;

  for(i=0; i<10; i++){
    C[i] = i+1;
    A[i] = exp(C[i]);
    if ( i == 5 ){ goto GOTO10; }
    D[i] = i+2;
    B[i] = exp(D[i]);
  GOTO10:
    E[i] = exp((double)5.0);
    F[i] = exp(C[i]+1);
    G[i] = exp(E[i]);
  }

  for(i=0;i<10;i++){
    printf("A1=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B1=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E1=%f\n",E[i]);
  }
  for(i=0;i<10;i++){
    printf("F1=%f\n",F[i]);
  }
  for(i=0;i<10;i++){
    printf("G1=%f\n",G[i]);
  }

  return 0;
}
