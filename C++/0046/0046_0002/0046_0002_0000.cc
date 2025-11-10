// RUN: clang++ -std=gnu++17 -stdlib=libstdc++ %s sub11.cpp -o test11.bin
// RUN: ./test11.bin

#include <cstdio>
#include "011.h"

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
