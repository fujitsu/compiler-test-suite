
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],B[100],K[100],L[100];
  int i,j;

  for(i=0; i<100; i++){
    K[i] = i+3;
    A[i] = exp(K[i]);
    for(j=0; j<100; j++){
      L[j] = j*2;
      B[j] = exp(L[j]);
    }
  }

  for(i=0;i<100;i++){
    printf("A=%f\n",A[i]);
  }

  for(i=0;i<100;i++){
    printf("B=%f\n",B[i]);
  }

  return 0;
}
