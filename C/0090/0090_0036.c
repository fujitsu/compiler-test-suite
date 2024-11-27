#include <stdio.h>
#include <math.h>

int main(){
  double A[10],B[10];
  double C[10]={1,2,3,4,5,6,7,8,9,10};
  double D[10]={10,9,8,7,6,5,4,3,2,1};
  int i;


  for(i=0; i<10; i++){
    A[i] = exp(C[i]);
    B[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A1=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B1=%f\n",B[i]);
  }



  for(i=0; i<10; i++){
    A[i] = exp(C[i]);
    B[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A2=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B2=%f\n",B[i]);
  }


  return 0;
}
