
#include <stdio.h>
#include <math.h>

int main(){
  double A1[10],A2[10],B1[10],B2[10];
  double C[10]={1,2,3,4,5,6,7,8,9,10};
  double D[10]={10,11,12,13,14,15,16,17,18,19};
  int i;

  for(i=0; i<10; i++){
    A1[i] = exp(C[i]);
    A2[i] = exp(D[i]);
    B1[i] = exp(C[i]);
    B2[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("dexp A1=%f\n",A1[i]);
  }
  for(i=0;i<10;i++){
    printf("dexp A2=%f\n",A2[i]);
  }
  for(i=0;i<10;i++){
    printf("dexp B1=%f\n",B1[i]);
  }
  for(i=0;i<10;i++){
    printf("dexp B2=%f\n",B2[i]);
  }

  return 0;
}
