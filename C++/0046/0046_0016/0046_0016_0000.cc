// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub8.cpp -o test8.bin
// RUN: ./test8.bin

#include <cstdio>
#include "000.h"

Values<int, int, int> &test();

int main() {
  auto &[a, b, c] = test();
  int result = a + b + c;
  if (result != 9) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
