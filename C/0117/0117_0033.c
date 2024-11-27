#include<stdio.h>

#define BLACK 0X01
#define WHITE 0X02
#define OTHER 0X08
int main(){
  unsigned char array[4] = {0X03, 0X02, 0X01, 0X08};
  int cnt;
  
  cnt = 0;
  while (cnt < 4){
    if ((array[cnt] & BLACK) && (array[cnt] & WHITE))
      printf("*OK* 1\n");
    else if (!(array[cnt] & BLACK) && (array[cnt] & WHITE))
      printf("*OK* 2\n");
    else if ((array[cnt] & BLACK) && !(array[cnt] & WHITE))
      printf("*OK* 3\n");
    else
      printf("*OK* 4\n");
    cnt++;
  }
}
