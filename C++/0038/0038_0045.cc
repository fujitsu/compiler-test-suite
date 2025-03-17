#include <iostream>

class coord {
  int x, y;

public:
  coord() { x = 0, y = 0; }

  coord(int i, int j) { x = i, y = j; }

  void get_xy(int &i, int &j) {
    i = x;
    j = y;
  }

  coord operator++();
};

coord coord::operator++() {
  ++x;
  ++y;
  return *this;
}

int main() {
  coord o1(10, 10);
  int x, y;

  ++o1;
  o1.get_xy(x, y);
  if (x == 11 && y == 11) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
