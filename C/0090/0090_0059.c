
#include <stdio.h>
#include <math.h>

int main(){

  double A[10],B[10];
  int a,b,m,i;
 
  a=2;
  b=5;
  m=a*b;

  for(i=0; i<m; i++){
    B[i] = i*2+i*3;
    A[i] = exp(B[i]);
  }
  
  for(i=0;i<10;i++) printf("A=%f\n",A[i]);

  return 0;
}
