#include <iostream>

inline void foo(int i, int *a, int *b, int *c) {
  int *tmp_a = a;
  int *tmp_b = b;
  int *tmp_c = c;
  (i % 2 == 0 ? (i % 3 == 0 ? *tmp_a : *tmp_b) : *tmp_c)++;
}

int main() {
  int a = 0, b = 0, c = 0;

  for (int i = 0; i < 100; ++i) {
    foo(i, &a, &b, &c);
  }

  std::cout << a << std::endl;
  std::cout << b << std::endl;
  std::cout << c << std::endl;

  return 0;
}
