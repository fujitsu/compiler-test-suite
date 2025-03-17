#include <iostream>

class array {
  int size;
  char *p;

public:
  array(int num);
  char &put(int);
  char get(int);
};

array::array(int num) {
  p = new char[num];
  if (p == NULL) {
    std::cout << "Allocation error" << std::endl;
    exit(1);
  }
  size = num;
}

char &array::put(int i) {
  if (i < 0 || size <= i) {
    std::cout << "Allocation error" << std::endl;
    exit(1);
  }
  return p[i];
}

char array::get(int i) {
  if (i < 0 || size <= i) {
    std::cout << "Bounds error" << std::endl;
    exit(1);
  }
  return p[i];
}

int main() {
  array a(10);
  a.put(2) = 'X';
  a.put(3) = 'R';

  if (a.get(2) == 'X' && a.get(3) == 'R') {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
