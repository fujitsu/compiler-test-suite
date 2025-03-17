#include <iostream>

void swapargs(int &x, int &y);

int main() {
  int i, j;
  i = 10;
  j = 19;

  swapargs(i, j);
  if (i != 19 || j != 10) {
    std::cout << "NG" << std::endl;
  } else {
    std::cout << "OK" << std::endl;
  }

  return 0;
}

void swapargs(int &x, int &y) {
  int tmp;
  tmp = x;
  x = y;
  y = tmp;
}
