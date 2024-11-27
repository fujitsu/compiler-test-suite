
#include<stdio.h>
#include<stdlib.h>
#include <memory.h>
#define NUM 100

void *getN(int n, int buf[n][n]) ;

int main() {
  int    i,j;
  int    b[NUM][NUM];

  getN(NUM,b);
  for (i=0; i<NUM; i++)
    for (j=0; j<NUM; j++)
      if (b[j][i]!=i+j) printf("ng:%d %d %d \n",i,j,b[j][i]);

  printf("test end\n");
  return 0;
}

void *getN(int n, int buf[n][n]) {
  int i,j;
  for (i=0; i<n; i++)
    for (j=0; j<n; j++)
      buf[j][i]=i+j;

  
  return buf;
}

