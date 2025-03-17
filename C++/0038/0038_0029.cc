#include <iostream>

class samp {
  int i, j;

public:
  ~samp() {}

  void set_ij(int a, int b) {
    i = a;
    j = b;
  }

  int get_ij() { return i * j; }
};

int main() {
  samp *p;

  p = new samp[10];
  if (p == NULL) {
    return 1;
  }

  for (int i = 0; i < 10; ++i) {
    p[i].set_ij(i, i);
  }

  for (int i = 0; i < 10; ++i) {
    if (p[i].get_ij() != (i * i)) {
      std::cout << "NG" << std::endl;
      delete[] p;
      return 0;
    }
  }

  std::cout << "OK" << std::endl;
  delete[] p;
  return 0;
}
