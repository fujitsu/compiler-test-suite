
#include <stdio.h>
#include <math.h>

int main(){
  double A[10][10],B[10][10];
  int i,j;

  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      B[i][j] = j*3+i/2;
      A[j][i] = exp(B[i][j]);
    }
  }

  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      printf("A=%f\n",A[i][j]);
    }
  }

  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      printf("B=%f\n",B[i][j]);
    }
  }

  return 0;
}
