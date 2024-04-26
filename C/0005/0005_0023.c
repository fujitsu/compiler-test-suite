#include <stdio.h>

int main(void){
  remove("test1.txt");
  FILE* fp1 = fopen("test1.txt", "wx");
  if(!fp1){
    printf("ng\n");
    return -1;
  }

  FILE* fp2 = fopen("test1.txt", "wx");
  if(!fp2){
    printf("ok\n");
    fclose(fp1);
    return 0;
  } else{
    printf("ng\n");    
  }

  return -1;
}
