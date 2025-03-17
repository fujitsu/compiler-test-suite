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

  coord operator+(coord op2);

  coord operator+(int op2);
};

coord coord::operator+(coord op2) {
  coord temp;
  temp.x = x + op2.x;
  temp.y = y + op2.y;
  return temp;
}

coord coord::operator+(int i) {
  coord temp;
  temp.x = x + i;
  temp.y = y + i;
  return temp;
}

int main() {
  coord op1(10, 10), op2(5, 3), op3;
  int x, y;

  op3 = op1 + op2;
  op3.get_xy(x, y);
  if (x != 15 || y != 13) {
    std::cout << "NG" << std::endl;
  }

  op3 = op1 + 100;
  op3.get_xy(x, y);
  if (x != 110 || y != 110) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
