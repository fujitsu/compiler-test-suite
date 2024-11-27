
#include <stdio.h>
#include <math.h>

int main(){
  double A[100][100],B[100][100];
  int i,j;

  for(i=0; i<100; i++){
    for(j=0; j<100; j++){
      B[i][j] = j*3+i/2;
      A[i][j] = exp(B[i][j]);
    }
  }

  for(i=0;i<100;i++){
    for(j=0;j<100;j++){
    printf("A=%f\n",A[i][j]);
    }
  }
  for(i=0;i<100;i++){
    for(j=0;j<100;j++){
    printf("B=%f\n",B[i][j]);
    }
  }

  return 0;
}
