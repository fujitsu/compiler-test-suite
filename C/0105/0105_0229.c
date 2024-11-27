#include <stdio.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#define N 10000

int foo(int * restrict a, int * restrict b) {
  int i = 0;

  for(i = 0; i < N; i++) {
    a[i] = b[i];
  }
  return a[N-1];
}

void init(int *a, int *b) {
  int i;
  for (i = 0; i < N; i++) {
    a[i] = 0;
    b[i] = i;
  }
}

int main() {
  int a[N];
  int b[N];
  int res;
  init(a,b);
  res = foo(a,b);

  if (res == 9999) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
