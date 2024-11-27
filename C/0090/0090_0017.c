
#include <stdio.h>
#include <math.h>

int main(){
  double B[1000],C[1000];
  int i;

  for(i=0; i<1000; i++){
    B[i] = i/2;
    C[i] = exp(B[i]);
  }

  for(i=0;i<100;i++){
    printf("B=%f\n",B[i]);
  }

  for(i=0;i<100;i++){
    printf("C=%f\n",C[i]);
  }

  return 0;
}
