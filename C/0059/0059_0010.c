
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>
#define NUM 10000

size_t xsize(int m, int n) {
  int data[m][n];
  return sizeof(data);
}

int main() {
  int i,j;

  for(i=1; i<NUM; i++) 
    for(j=1; j<NUM; j++) {
      if ( i*j*sizeof(int)!=xsize(i,j) )
        printf("error %d %d\n",xsize(i,j));
    }

  printf("End\n");
  return 0;
}
