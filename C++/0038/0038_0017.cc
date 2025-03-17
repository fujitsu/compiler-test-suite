#include <iostream>

class samp {
  int i;

public:
  samp(int n) { i = n; }

  ~samp() {}

  int get_i() { return i; }
};

int sqr_it(samp o) { return (o.get_i() * o.get_i()); }

int main() {
  samp a(10);

  if (sqr_it(a) == 100) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
