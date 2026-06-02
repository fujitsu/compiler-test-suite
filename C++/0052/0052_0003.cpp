// RUN: clang++ -std=gnu++17 -stdlib=libstdc++ %s -o test6.bin
// RUN: ./test6.bin

#include <cstdio>

struct X {
  int a[2]{1, 2};
};

template <typename T> struct Z {};

struct Y {
  template <typename T> void f() {
    X x;
    auto [i, j] = x.a;
    p = i;
    q = j;
    Z<T> z;
  }

  int p;
  int q;
};

int main() {
  Y y;
  y.f<int>();
  if (y.p != 1 || y.q != 2) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
