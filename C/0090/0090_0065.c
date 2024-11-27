
#include <stdio.h>
#include <math.h>

int main(){

  double A[100],B[100];
  int i;

  for(i=0; i<100; i++){
    A[i] = exp((double)1.00000000+i);
    B[i] = exp((double)5.00000000+i);
  }
  
  for(i=0;i<100;i++) printf("A=%f\n",A[i]);
  for(i=0;i<100;i++) printf("B=%f\n",B[i]);

  return 0;
}
