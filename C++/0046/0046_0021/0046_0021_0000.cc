// RUN: clang++ -std=c++17 -stdlib=libc++ %s sub5.cpp -o test5.bin
// RUN: ./test5.bin

#include <cstdio>
#include "005.h"

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
