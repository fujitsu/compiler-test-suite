#include <stdio.h>
#define SIZE 100
#ifndef VECLEN
#define VECLEN 8
#endif
typedef _Float16 DATA;

DATA out = 10;
#if VECLEN == 2
long idx[SIZE];
#else
int idx[SIZE];
#endif

int main() {
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
    out -= in[idx[i]];
#else
    out -= in[i];
#endif
  }

  // -fno-fast-math: 5.214844
  // -ffast-math: 5.175781
  // -ffast-math(llvm):5.164062
  // -O3 -ffast-math -march=armv8.4-a+sve(llvm):5.160156
  if (5.160156 <= out && out <= 5.214844)
    printf("OK\n");
  else
    printf("NG\n%f\n", (float)out);

  return 0;
}
