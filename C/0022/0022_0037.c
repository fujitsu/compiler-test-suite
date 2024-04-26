#include <stdio.h>
#define SIZE 100
#ifndef VECLEN
#define VECLEN 4
#endif
typedef _Float16 DATA;

#if VECLEN == 2
long idx[SIZE];
#else
int idx[SIZE];
#endif

int main() {
  DATA out = 0;
  DATA in[SIZE];
  #pragma clang loop vectorize(disable)
  for (int i = 0; i < SIZE; i++) {
    in[i] = i / 1024.0;
    idx[i] = i;
  }
#if VECLEN == 1
  #pragma clang loop vectorize(disable)
#endif
  for (int i = 0; i < SIZE; i++) {
#if VECLEN < 8
    if (out > in[idx[i]]) out = in[idx[i]];
#else
    if (out > in[i]) out = in[i];
#endif
  }

  // -fno-fast-math: 0.000000
  // -ffast-math: 0.000000
  if (out == 0.000000)
    printf("OK\n");
  else
    printf("NG\n%f\n", (float)out);

  return 0;
}
