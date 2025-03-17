#include <iostream>

class base {
  int x;

public:
  void setx(int n) { x = n; }

  void showx() {
    if (x != 10) {
      std::cout << "NG" << std::endl;
    }
  }
};

class derived : private base {
  int y;

public:
  void setxy(int m, int n) {
    setx(m);
    y = n;
  }

  void showxy() {
    showx();
    if (y != 20) {
      std::cout << "NG" << std::endl;
    }
  }
};

int main() {
  derived ob;
  ob.setxy(10, 20);
  ob.showxy();
  std::cout << "OK" << std::endl;
  return 0;
}
