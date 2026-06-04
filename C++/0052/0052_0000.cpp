// RUN: clang++ -std=c++17 -stdlib=libstdc++ %s -o test1.bin
// RUN: ./test1.bin

#include <cstdio>

struct X {
  int a[2]{1, 2};
};

template <typename T> struct Y {
  void f() {
    X x;
    auto [i, j] = x.a;
    p = i;
    q = j;
  }

  int p;
  int q;
};

int main() {
  Y<int> y;
  y.f();
  if (y.p != 1 || y.q != 2) {
    puts("NG");
    return 1;
  }

  puts("OK");
  return 0;
}
