#include <stdio.h>
int main(){
  int  t41[20][20], t42[20][20];
  int         i, j;
  for(i=1; i<21; i++){
    for(j=1; j<21; j++){
      t41[i-1][j-1] = 1;
      t42[j-1][i-1] = 2;
    }
  }
  fprintf(stdout,"%d %d \n",t41[0][0],t42[0][0]);
}
