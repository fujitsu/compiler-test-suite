
#include <stdio.h>
#include <math.h>

int main(){

  double A[10],B[10];
  int i;

  for(i=0;i<10;i++) A[i] = 0;
  for(i=0;i<10;i++) B[i] = 0;

  for(i=0; i<10; i+=2){
    A[i] = exp(i);
    B[i] = exp(i);
  }
  
  for(i=0;i<10;i++) printf("A=%f\n",A[i]);
  for(i=0;i<10;i++) printf("B=%f\n",B[i]);

  return 0;
}
