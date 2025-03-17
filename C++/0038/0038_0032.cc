#include <iostream>

class myclass {
  int who;

public:
  myclass(int n) { who = n; }

  ~myclass() {}

  int id() { return who; }
};

void f(myclass &o) {
  if (o.id() != 1) {
    std::cout << "NG" << std::endl;
  }
}

int main() {
  myclass x(1);
  f(x);
  std::cout << "OK" << std::endl;
  return 0;
}
