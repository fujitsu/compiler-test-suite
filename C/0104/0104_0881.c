#include <stdio.h>
#include <math.h>
#define N 100

int g0;
float f0[N], f1[N], dest[N];

void foo(void) {
  int i;
  for (i=0; i<N; i++) {
    dest[i] = copysignf(f0[i], f1[i]);
  }
}
int main() {
  int i;
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    f0[i] = (float)i;
    f1[i] = (float)-i;
  }
  foo();
  for (i = 0;i < N;i++) {
    if (f1[i] != dest[i]) {
      printf("NG f1[i] != dest[i]\n", f1[i], dest[i]);
    }
  }
  puts("OK");
  return 0;
}
