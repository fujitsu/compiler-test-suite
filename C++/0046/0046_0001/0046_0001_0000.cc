// RUN: clang++ -std=gnu++17 -stdlib=libstdc++ %s sub10.cpp -o test10.bin
// RUN: ./test10.bin

#include <cstdio>
#include "010.h"

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
