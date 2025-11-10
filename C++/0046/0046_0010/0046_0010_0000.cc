// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub3.cpp -o test3.bin
// RUN: ./test3.bin

#include <cstdio>
#include "000.h"

Values<long double, long double, long double> &test();

int main() {
  auto &[a, b, c] = test();
  long double result = a + b + c;
  if (result != 9.0) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
