// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub5.cpp -o test5.bin

#include <cstdio>
#include "000.h"

Values<_Float16, _Float16, _Float16> &test();

int main() {
  auto &[a, b, c] = test();
  _Float16 result = a + b + c;
  if (result != 9.0) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
