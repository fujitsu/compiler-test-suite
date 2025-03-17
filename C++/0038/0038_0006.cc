#include <cstdlib>
#include <iostream>

class array {
  int *p;
  int size;

public:
  array(int sz) {
    p = new int[sz];
    if (p == NULL) {
      exit(1);
    }
    size = sz;
  }

  ~array() { delete[] p; }

  array(const array &a);

  void put(int i, int j) {
    if (i >= 0 && i < size) {
      p[i] = j;
    }
  }

  int get(int i) { return p[i]; }
};

array::array(const array &a) {
  size = a.size;
  p = new int[size];
  if (p == NULL) {
    exit(1);
  }

  for (int i = 0; i < size; ++i) {
    p[i] = a.p[i];
  }
}

int main() {
  array num(10);

  for (int i = 0; i < 10; ++i) {
    num.put(i, i);
  }

  for (int i = 0; i < 10; ++i) {
    if (num.get(i) != i) {
      std::cout << "NG" << std::endl;
      return 0;
    }
  }

  array x = num;

  for (int i = 0; i < 10; ++i) {
    if (x.get(i) != i) {
      std::cout << "NG" << std::endl;
      break;
    }
  }

  std::cout << "OK" << std::endl;
  return 0;
}
