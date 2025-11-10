// RUN: clang++ -std=gnu++17 -stdlib=libc++ %s sub15.cpp -o test15.bin
// RUN: ./test15.bin

#include <cstdio>
#include "015.h"

Values<int, float, double>::X &test();

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
