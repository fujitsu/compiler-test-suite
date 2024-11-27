#include<stdio.h>

#define BLACK 0X01
#define WHITE 0X02
#define OTHER 0X08
int main(){
  unsigned char array[4] = {0X03, 0X02, 0X01, 0X08};
  int cnt=0;
  int counter=0;

  for(;;){
    while (cnt < 4){
      if ((array[cnt] & BLACK) && (array[cnt] & WHITE)){
        printf("*OK* 1\n");
	counter++;
      }
      else if (!(array[cnt] & BLACK) && (array[cnt] & WHITE)){
        printf("*OK* 2\n");
	counter++;
      }
      else if ((array[cnt] & BLACK) && !(array[cnt] & WHITE)){
        printf("*OK* 3\n");
	counter++;
      }
      else{
        printf("*OK* 4\n");
	counter++;
      }
      cnt++;
    }
    if(counter==4)break;
  }
}
