#include <stdio.h>

int main(void){
  int t41[20][20], t42[20][20];
  int i, j;
  i = 2147483627;
  while (i < 2147483647) {
    j = 2147483627;
    while (j < 2147483647) {
      t41[i-2147483627][j-2147483627] = 1;
      t42[j-2147483627][i-2147483627] = 2;
      ++j;
    }
    ++i;
  }
  fprintf(stdout,"%d %d \n",t41[0][0],t42[0][0]);
  return 0;
}
