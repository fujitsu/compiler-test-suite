// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub7.cpp -o test7.bin
// RUN: ./test7.bin

#include <cstdio>
#include "000.h"

Values<short, short, short> &test();

int main() {
  auto &[a, b, c] = test();
  short result = a + b + c;
  if (result != 9) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
