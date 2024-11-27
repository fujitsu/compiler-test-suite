
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10];
  double C,D;
  int i;

  for(i=0;i<10;i++){
    C = i;
    A[i] = pow(C,C);
    D = i + 1;
    B[i] = pow(D,D);
  }

  for( i=0;i<10;i++){
    printf(" adxd A=%f\n",A[i]);
  }
  for( i=0;i<10;i++){
    printf(" adxd B=%f\n",B[i]);
  }
  return 0;
}

