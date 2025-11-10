// RUN: clang++ -std=c++17 -stdlib=libc++ %s sub7.cpp -o test7.bin
// RUN: ./test7.bin

#include <cstdio>
#include "007.h"

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
