// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub9.cpp -o test9.bin
// RUN: ./test9.bin

#include <cstdio>
#include "000.h"

Values<long, long, long> &test();

int main() {
  auto &[a, b, c] = test();
  long result = a + b + c;
  if (result != 9) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
