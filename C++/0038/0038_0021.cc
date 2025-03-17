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

  friend coord operator+(coord ob1, int i);
  friend coord operator+(int i, coord ob1);
};

coord operator+(coord ob1, int i) {
  coord temp;
  temp.x = ob1.x + i;
  temp.y = ob1.y + i;
  return temp;
}

coord operator+(int i, coord ob1) {
  coord temp;
  temp.x = ob1.x + i;
  temp.y = ob1.y + i;
  return temp;
}

int main() {
  coord o1(10, 10);
  int x, y;

  o1 = o1 + 10;
  o1.get_xy(x, y);
  if (x != 20 || y != 20) {
    std::cout << "NG" << std::endl;
  }

  o1 = 10 + o1;
  o1.get_xy(x, y);
  if (x != 30 || y != 30) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
