#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N 30
#define M 10

void foo(const int n, const char * b, char * a){
  int i;
  for(i = 0; i < n; i++){
    memset(&a[i], b[i], sizeof(char) * (i + 1));
  }
}

int main() {
  int i;
  char b[N];
  char a[N];
  char res[N];

  memset(a, 'a', sizeof(char) * N);
  memset(b, 'x', sizeof(char) * N);
  memset(res, 'a', sizeof(char) * N);

  for(i = 0; i < 2*M-1 ; i++) {
    res[i] = b[i];
  }
  
  foo(M, b, a); 

  for(i = 0; i < N ; i++) {
    if (a[i] != res[i]) {
      printf("ng\n");
    }
  }
  printf("ok\n");
}
