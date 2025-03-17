#include <iostream>

class B1 {
  int a;

public:
  B1(int x) { a = x; }

  int geta() { return a; }
};

class B2 {
  int b;

public:
  B2(int x) { b = x; }

  int getb() { return b; }
};

class D : public B1, public B2 {
  int c;

public:
  D(int x, int y, int z) : B1(z), B2(y) { c = x; }

  void show() {
    if (geta() != 3 || getb() != 2) {
      std::cout << "NG" << std::endl;
    }

    if (c != 1) {
      std::cout << "NG" << std::endl;
    }
  }
};

int main() {
  D ob(1, 2, 3);
  ob.show();
  std::cout << "OK" << std::endl;
  return 0;
}
