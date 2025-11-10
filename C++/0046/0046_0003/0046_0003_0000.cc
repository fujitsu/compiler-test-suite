// RUN: clang++ -std=gnu++17 -stdlib=libstdc++ %s sub12.cpp -o test12.bin
// RUN: ./test12.bin

#include <cstdio>
#include "012.h"

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
