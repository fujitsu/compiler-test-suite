// RUN: clang++ -std=gnu++17 -stdlib=libc++ %s sub13.cpp -o test13.bin
// RUN: ./test13.bin

#include <cstdio>
#include "013.h"

Values<int, float, double> &test();

int main() {
  auto &[a, b, c] = test();
  double result = a + b + c;
  if (result != 9.0) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
