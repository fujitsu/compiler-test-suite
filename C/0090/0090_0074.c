
#include <stdio.h>
#include <math.h>

int main(){
  double A[10][10],B[10][10];
  int i,j;

  for(j=0; j<10; j++){
    for(i=0; i<10; i++){
      B[i][j] = i*3+j/2;
      A[j][i] = cos(B[i][j]);
    }
  }

  for(i=0;i<10;i++) for(j=0;j<10;j++) printf("A=%f ",A[i][j]);
  for(i=0;i<10;i++) for(j=0;j<10;j++) printf("B=%f ",B[i][j]);
  printf("\n");

  return 0;
}
