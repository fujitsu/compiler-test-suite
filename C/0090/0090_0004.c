
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10],M[10],J[10];
  double C,D;
  int i;

  for(i=0;i<10;i++){
    A[i] = pow((((double)2.0)+i),((double)3.0+i));
    B[i] = pow((((double)4.0)+i),((double)2.0+i));
  }
  for( i=0; i<10; i++ ){
    printf("(cnt)adxd A=%f\n",A[i]);
  }
  for( i=0; i<10; i++ ){
    printf("(cnt)adxd B=%f\n",B[i]);
  }
  return 0;
}

