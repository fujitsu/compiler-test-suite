#include <cstdio>
#include <iostream>

class myclass {
  int x;

public:
  myclass() { x = 0; }

  myclass(int n) { x = n; }

  int getx() { return x; }

  void setx(int n) { x = n; }
};

int main() {
  myclass *p;
  myclass ob(10);

  p = new myclass[10];
  if (p == NULL) {
    std::cout << "Allocation Error" << std::endl;
    return 1;
  }

  for (int i = 0; i < 10; ++i) {
    p[i] = ob;
  }

  for (int i = 0; i < 10; ++i) {
    if (p[i].getx() != 10) {
      std::cout << "NG" << std::endl;
    }
  }

  std::cout << "OK" << std::endl;
  delete[] p;

  return 0;
}
