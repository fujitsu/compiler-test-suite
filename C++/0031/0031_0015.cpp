#include <iostream>

template <class AA> void print(AA aa) {
  std::cout << "CHECK" << std::endl;
  std::cout << aa << std::endl;
}

int main() {
  int i = 10;
  double d = 3.0;
  const char *str = "abc";

  print(i);
  print(i);
  print(d);
  print(str);

  return 0;
}
