#include <iostream>

class integer {
private:
  int data_;

public:
  integer(int data = 0) : data_(data) {}

  operator bool() const {
    std::cout << data_ << std::endl;
    return false;
  }
};

int main() {
  integer n1(1);

  if (n1) {
    std::cout << "n1" << std::endl;
  } else if (integer n2 = 2) {
    std::cout << "n2" << std::endl;
  } else if (integer n3 = 3) {
    std::cout << "n3" << std::endl;
  } else {
    std::cout << "OK" << std::endl;
  }
  return 0;
}
