#include "stdio.h"
int main(){
  unsigned char a[10] = {0,0,0,0,0,1,1,1,1,1};
  unsigned char res1 = 0;
  unsigned char res2 = 0;
  int i;

  for (i=0; i<10; i++) {
    res1 = res1 | a[i];
  }

  for (i=0; i<10; i++) {
    res2 = res2 & a[i];
  }

  printf("OK\n");
} 
