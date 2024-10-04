#include <stdio.h> 
#include <string.h> 

const int input[10] = { 0,1,2,3,4,5,6,7,8,9 };
      int reult[10];
int main(){
  int i,j;
  for(i=0,j=0;i<10,j<10;i++,j++){
    reult[i] = input[j];
  }

  if(memcmp(reult, input, sizeof(int)*10) == 0) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
