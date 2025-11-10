// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub1.cpp -o test1.bin
// RUN: ./test1.bin

#include <cstdio>
#include "000.h"

Values<float, float, float> &test();

int main() {
  auto &[a, b, c] = test();
  float result = a + b + c;
  if (result != 9.0) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
