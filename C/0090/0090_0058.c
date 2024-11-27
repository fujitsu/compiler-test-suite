
#include <stdio.h>
#include <math.h>

int main(){

  double A[100],B[100];
  int i;
 
  for(i=0; i<100; i++){
    B[i] = i*3;
    A[i] = exp(B[i]);
  }
  
  for(i=0;i<100;i++) printf("A=%f\n",A[i]);
  for(i=0;i<100;i++) printf("B=%f\n",B[i]);

  return 0;
}
