#include <iostream>

double rect_area(double length, double width = 0) {
  if (!width) {
    width = length;
  }
  return length * width;
}

int main() {
  if (rect_area(10.0, 5.8) != 58) {
    std::cout << "NG" << std::endl;
  }

  if (rect_area(10.0) != 100) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
