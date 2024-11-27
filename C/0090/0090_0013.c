
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],C[100],D[100];
  double B;
  int i;

  for(i=0; i<100; i++){
    B = i*3;
    A[i] = sin(B) + B + i;
    C[i] = i + i * 3 + 5;
    D[i] = log(C[i]);
  }

  for(i=0;i<100;i++){
    printf("A=%f\n",A[i]);
  }

  printf("B=%f\n",B);

  for(i=0;i<100;i++){
    printf("C=%f\n",C[i]);
  }

  for(i=0;i<100;i++){
    printf("D=%f\n",D[i]);
  }

  return 0;
}
