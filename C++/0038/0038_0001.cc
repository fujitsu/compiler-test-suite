#include <iostream>

class samp {
  int i;

public:
  samp(int n) { i = n; }

  void set_i(int n) { i = n; }

  int get_i() { return i; }
};

void sqr_it(samp *o) { o->set_i(o->get_i() * o->get_i()); }

int main() {
  samp a(10);

  sqr_it(&a);

  if (a.get_i() == 100) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
