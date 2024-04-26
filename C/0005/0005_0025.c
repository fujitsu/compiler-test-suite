#include <stdio.h>

int main(void){
  remove("test3.txt");
  FILE* fp1 = fopen("test3.txt", "w+x");
  if(!fp1){
    printf("ng\n");
    return -1;
  }

  FILE* fp2 = fopen("test3.txt", "w+x");
  if(!fp2){
    printf("ok\n");
    fclose(fp1);
    return 0;
  } else{
    printf("ng\n");    
  }

  return -1;
}
