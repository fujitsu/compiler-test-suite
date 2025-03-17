#include <iostream>

class base {
  int i;

public:
  base(int n) { i = n; }

  ~base() {}

  int geti() { return i; }
};

class derived : public base {
  int j;

public:
  derived(int n, int m) : base(m) { j = n; }

  ~derived() {}

  int getj() { return j; }
};

int main() {
  derived o(10, 20);

  if (o.geti() != 20) {
    std::cout << "NG" << std::endl;
  }

  if (o.getj() != 10) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
