#include <stdio.h>

int main(void){
  int t41[20][20], t42[20][20];
  volatile int i, j;

  for(i = 1;i <= 20;i++){
    for(j = 1;j <= 20;j++){
      t41[i-1][j-1] = 1;
      t42[j-1][i-1] = 2  ;
    }
  }
  fprintf(stdout,"%d %d \n",t41[0][0],t42[0][0]);
  return 0;
}
