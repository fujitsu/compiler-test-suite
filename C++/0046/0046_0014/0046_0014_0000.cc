// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s sub6.cpp -o test6.bin
// RUN: ./test6.bin

#include <cstdio>
#include "000.h"

Values<char, char, char> &test();

int main() {
  auto &[a, b, c] = test();
  char result = a + b + c;
  if (result != 9) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
