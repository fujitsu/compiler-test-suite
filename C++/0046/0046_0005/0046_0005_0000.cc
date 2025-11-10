// RUN: clang++ -std=gnu++17 -stdlib=libc++ %s sub14.cpp -o test14.bin
// RUN: ./test14.bin

#include <cstdio>
#include "014.h"

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
