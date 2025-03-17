#include <stdio.h>

int main(void){
  int t41[20][20], t42[20][20];
  int i, j;
  for(i = 2147483627;i < 2147483647; i++){
    for(j = 2147483627;j < 2147483647; j++){
      t41[i-2147483627][j-2147483627] = 1;
      t42[j-2147483627][i-2147483627] = 2;
      if (j == 2147483647) break;
    }
    if (i == 2147483647) break;
  }
  fprintf(stdout,"%d %d \n",t41[0][0],t42[0][0]);
  return 0;
}
