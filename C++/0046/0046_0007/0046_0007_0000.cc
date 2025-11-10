// RUN: clang++ -std=gnu++17 -stdlib=libc++ %s sub16.cpp -o test16.bin
// RUN: ./test16.bin

#include <cstdio>
#include "016.h"

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
