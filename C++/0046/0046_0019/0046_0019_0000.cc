// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub3.cpp -o test3.bin
// RUN: ./test3.bin

#include <cstdio>
#include "003.h"

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
