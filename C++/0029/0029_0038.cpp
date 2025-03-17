#include <iostream>

inline void foo(int i, int *a, int *b) { (i % 2 == 0 ? *a : *b)++; }

int main() {
  int a = 0, b = 0;

  for (int i = 0; i < 10; ++i) {
    foo(i, &a, &b);
  }

  std::cout << a << std::endl;
  std::cout << b << std::endl;

  return 0;
}
