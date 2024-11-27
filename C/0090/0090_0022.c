
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10];
  double K,L;
  int i,j;

  for(i=0; i<10; i++){
    K = i*3;
    A[i] = exp(K);
    for(j=0; j<10; j++){
      L = pow(j,2);
      B[j] = exp(j);
    }
  }

  for(i=0;i<10;i++){
    printf("A=%f\n",A[i]);
  }

  for(i=0;i<10;i++){
    printf("B=%f\n",B[i]);
  }

  return 0;
}
