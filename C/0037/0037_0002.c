#include <stdio.h>

int foo(int N);

int foo(int N) {

  float a[100], b[100];
  int i;
  for (i = 1; i < N; i++) {
    if (b[i] > 0.0){
      a[i] = 2.0 * b[i];
    } 
    b[i] = a[i-1];
  }
  return 1;
}

int main(void) {
  
  foo(100);
  return 0;
}

