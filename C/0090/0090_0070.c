
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],B[100];
  int i,j,n;

  for(i=0; i<100; i++){
    A[i] = i+2;
    B[i] = log(A[i]);
  }

  for(i=0;i<100;i++) printf("A=%f ",A[i]);
  for(i=0;i<100;i++) printf("B=%f ",B[i]);

  return 0;
}
