
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],B1[100],B2[100],K[100],L[100];
  int i,j;

  for(i=0; i<100; i++){
    K[i] = i+3;
    A[i] = exp(K[i]);
    for(j=0; j<100; j++){
      L[j] = j*2;
      B1[j] = sin(L[j]);
      B2[j] = cos(L[j]);
    }
  }

  for(i=0;i<100;i++)  printf("A=%f ",A[i]);
  for(i=0;i<100;i++)  printf("B1=%f ",B1[i]);
  for(i=0;i<100;i++)  printf("B2=%f ",B2[i]);
  printf("\n");

  return 0;
}
