#include <iostream>

int main() {
  int *p;
  p = new int(9);
  if (*p == 9) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  delete p;
  return 0;
}
