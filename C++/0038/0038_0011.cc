#include <iostream>

class base {
  int x;

public:
  void setx(int n) { x = n; }

  int getx() { return x; }
};

class derived : public base {
  int y;

public:
  void sety(int n) { y = n; }

  int gety() { return y; }
};

int main() {
  derived ob;
  ob.setx(10);
  ob.sety(20);

  if (ob.getx() != 10) {
    std::cout << "NG" << std::endl;
  }

  if (ob.gety() != 20) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
