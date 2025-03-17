#include <iostream>

class myclass {
  int x;

public:
  myclass(int n = 0) { x = n; }

  int getx() { return x; }
};

int main() {
  myclass o1(10);
  myclass o2;

  if (o1.getx() != 10) {
    std::cout << "NG" << std::endl;
  }

  if (o2.getx() != 0) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
