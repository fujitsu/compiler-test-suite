
#include <stdio.h>
#include <math.h>

int main(){
  double A[100],D[100];
  double B,C;
  int i;

  C = 0;
  for(i=0; i<100; i++){
    B    = i * 3;
    A[i] = sin(B) + B + i + C;
    C    = i + i * A[i] + 5 + B;
    D[i] = log(C) + C;
  }

  for(i=0;i<100;i++){
    printf("A=%f\n",A[i]);
  }

  printf("B=%f\n",B);

  printf("C=%f\n",C);

  for(i=0;i<100;i++){
    printf("D=%f\n",D[i]);
  }

  return 0;
}
