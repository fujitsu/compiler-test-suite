
#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10];
  double K,L;
  int i,j;

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      L = j*2;
      B[j] = sin(L);
    }
    K = i+3;
    A[i] = pow(cos(K),K);
  }

  for(i=0;i<10;i++)  printf("A=%f ",A[i]);
  for(i=0;i<10;i++)  printf("B=%f ",B[i]);
  printf("\n");

  return 0;
}
