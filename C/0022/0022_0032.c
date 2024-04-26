#include <stdio.h>
#define SIZE 100
#ifndef VECLEN
#define VECLEN 8
#endif
typedef _Float16 DATA;

DATA out = 1;
#if VECLEN == 2
long idx[SIZE];
#else
int idx[SIZE];
#endif

int main() {
  DATA in[SIZE];
  #pragma clang loop vectorize(disable)
  for (int i = 0; i < SIZE; i++) {
    in[i] = (i%29+1) / 11.0;
    idx[i] = i;
  }
#if VECLEN == 1
  #pragma clang loop vectorize(disable)
#endif
  for (int i = 0; i < SIZE; i++) {
#if VECLEN < 8
    out *= in[idx[i]];
#else
    out *= in[i];
#endif
  }

  // -fno-fast-math: 0.031067
  // -ffast-math: 0.031128
  if (0.031066 <= out && out <= 0.031128)
    printf("OK\n");
  else
    printf("NG\n%f\n", (float)out);

  return 0;
}
