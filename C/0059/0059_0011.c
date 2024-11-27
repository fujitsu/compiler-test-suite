
#include<stdio.h>
#include<stdlib.h>
#include <stdbool.h>
#include <memory.h>
#define NUM 10

size_t getN(int n, int  buf[n][n]) ;
size_t getN2(int n, int  buf[n][n]) ;

int main() {
  int    i;
  int    b[10][10];

  for (i=1; i <= NUM; i++) {
    getN(i,b);
    getN2(i,b);
  }

  return 0;
}

size_t getN(int n, int  buf[n][n]) {
  int buf2[n][n];

  printf("%d %d %d \n",n,sizeof(buf),sizeof(buf2));

  return 0;
}

size_t getN2(int n, int  buf[n][n]) {
  int buf2[n][n];

  printf("%d %d %d \n",n,sizeof(buf),sizeof(buf2));

  return 0;
}
