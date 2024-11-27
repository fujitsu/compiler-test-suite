
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>

void putN(int buff) {
  printf("putN=%d\n",buff);
  return;
}

size_t getN(int n, int m) {
  int bb[n][m];
  bb[n-1][m-1]=sizeof(bb);
  
  putN(bb[n-1][m-1]);
  return sizeof(bb);
}

int main() {
  size_t sz;
  int    i,ii;
  for (i=1; i <= 10; i++) {
    for (ii=1; ii <= 10; ii++) {
      sz = getN(i*2,ii*4);
      printf("getN(%d,%d)=%d\n",i,ii,sz);
    }
  }
  return 0;
}

