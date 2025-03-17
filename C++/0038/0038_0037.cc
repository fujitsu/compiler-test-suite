#include <iostream>

void space(int count) {
  for (; count; --count) {
    std::cout << ' ';
  }
}

void space(int count, char ch) {
  for (; count; --count) {
    std::cout << ch;
  }
}

int main() {
  void (*fp1)(int);

  void (*fp2)(int, char);

  fp1 = space;
  fp2 = space;
  fp1(22);
  std::cout << "|" << std::endl;
  fp2(30, 'x');
  std::cout << "|" << std::endl;

  return 0;
}
