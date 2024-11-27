
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],M[10],J[10];
  double C,D;
  int i;

  for(i=0;i<10;i++){
    M[i] = i;
    A[i] = pow(M[i],M[i]);
    J[i] = i + 1;
    B[i] = pow(J[i],J[i]);
  }

  for( i=0;i<10;i++){
    printf(" adxd A=%f\n",A[i]);
  }
  for( i=0;i<10;i++){
    printf(" adxd B=%f\n",B[i]);
  }
  return 0;
}

