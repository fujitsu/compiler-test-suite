#include <stdio.h>
int main(){
  int  t41[20][20], t42[20][20];
  int         i, j;
  for(i = 1;i <= 20;i=i+5){
    for(j = 1;j <= 20;j=j+5){
      t41[i-1][j-1] = 1;
      t41[i][j] = 1;
      t41[i+1][j+1] = 1;
      t41[i+2][j+2] = 1;
      t41[i+3][j+3] = 1;
      t42[j-1][i-1] = 2;
      t42[j][i] = 2;
      t42[j+1][i+1] = 2;
      t42[j+2][i+2] = 2;
      t42[j+3][i+3] = 2;
    }
  }
  fprintf(stdout,"%d %d \n",t41[0][0],t42[0][0]);
}
