// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub4.cpp -o test4.bin
// RUN: ./test4.bin

#include <cstdio>
#include "000.h"

Values<__fp16, __fp16, __fp16> &test();

int main() {
  auto &[a, b, c] = test();
  __fp16 result = a + b + c;
  if (result != 9.0) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
