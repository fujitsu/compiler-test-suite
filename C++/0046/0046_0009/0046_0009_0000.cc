// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub2.cpp -o test2.bin
// RUN: ./test2.bin

#include <cstdio>
#include "000.h"

Values<double, double, double> &test();

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
