// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub10.cpp -o test10.bin
// RUN: ./test10.bin

#include <cstdio>
#include "000.h"

Values<X, X, X> &test();

int main() {
  auto &[a, b, c] = test();
  int result = a.x + b.x + c.x;
  if (result != 9) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
