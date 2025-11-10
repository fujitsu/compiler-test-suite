// RUN: clang++ -std=c++17 -stdlib=libc++ %s sub6.cpp -o test6.bin
// RUN: ./test6.bin

#include <cstdio>
#include "006.h"

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
