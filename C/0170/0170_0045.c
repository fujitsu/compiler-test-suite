#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N 100
#define M 18

void foo (char *a, char *b) {
  int i;
  for(i=1; i<=M; i++) {
    memcpy(&a[i-1],&b[i-1],i);
  }
}

void init(char *a, char *b, char *res) {
  int i;
#pragma clang loop unroll(disable)
  for(i=0; i<N; i++) {
    a[i] = 'b';
    b[i] = 'a';
    res[i] = 'b';
  }
  for(i=0; i<2*M-1; i++) {
    res[i] = b[i];
  }
}

int main() {
  char a[N],b[N],res[N];
  int i;

  init(a,b,res);
  foo(a,b);
  
  for(i=0; i<N; i++) {
#ifdef DEBUG_PRINT
      printf("a[%d] = %c\n", i,a[i]);
#endif
    if (a[i] != res[i]) {
      printf("ng : a[%d] = %c, res[%d] = %c\n", i,a[i],i,res[i]);
    }
  }
  printf("ok\n");
}

