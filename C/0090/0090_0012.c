
#include <stdio.h>
#include <math.h>

int main(){
  double A[100];
  double B;
  int i;

  for(i=0; i<100; i++){
    B = i*3;
    A[i] = sin(B) + B + i;
  }

  for(i=0;i<100;i++){
    printf("A=%f\n",A[i]);
  }
  printf("B=%f\n",B);

  return 0;
}
