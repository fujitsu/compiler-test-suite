
#include <stdio.h>
#include <math.h>

int main(){
  double A[100][100],B[100][100],C[100][100];
  int I,J;

  for(J=0; J<100; J++){
    for(I=0; I<100; I++){
      C[J][I]=0;
    }
  }

  for(J=0; J<100; J++){
    I=1;
    B[J][I] = J/2;
    C[J][I] = sin(B[J][I]+2);
    for(I=0; I<100; I++ ){
      B[J][I] = I*3+J/2;
      A[J][I] = sin(B[J][I]);
    }
  }


  for(J=0;J<100;J++){
    for(I=0;I<100;I++){
      printf("A[%d][%d]=%f\n",J,I,A[J][I]);
      printf("C[%d][%d]=%f\n",J,I,C[J][I]);
    }
  }
  return 0;
}
