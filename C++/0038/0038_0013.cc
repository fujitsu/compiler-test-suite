#include <iostream>

class base {
public:
  base() {}

  ~base() {}
};

class derived : public base {
  int j;

public:
  derived(int n) { j = n; }

  ~derived() {}

  int getj() { return j; }
};

int main() {
  derived o(10);
  if (o.getj() == 10) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
