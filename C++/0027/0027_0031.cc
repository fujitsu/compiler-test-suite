#include <iostream>
#define SIZE 100
class XXX {
private:
  int _m;
  int _n;
  int _size;
  void initial(double array[SIZE][SIZE]) {
    for (int i = 0; i < _size; i++) {
      for (int j = 0; j < _size; j++) {
        array[i][j] = (i == j) ? 1 : 0;
      }
    }
  }

public:
  double _a[SIZE][SIZE];
  double _b[SIZE][SIZE];
  double _c[SIZE][SIZE];
  XXX() {
    _size = SIZE;
    initial(_a);
    initial(_b);
    initial(_c);
  }
  void loop0(int size) {
    int j;
    int i;

    for (j = 0; j < size; j++) {
      for (i = 0; i < size; i++) {
        _a[i][j] = _b[i][j] + _c[i][j];
      }
    }
  }
  void result(double array[SIZE][SIZE], int c) {
    int i, j;
    for (j = 0; j < _size; j++) {
      for (i = 0; i < _size; i++) {
        if (i == j) {
          if (array[i][j] != c) {
            std::cout << "ng " << array[i][j] << std::endl;
            std::cout << "i " << i << std::endl;
            std::cout << "j " << j << std::endl;
            return;
          }
        } else {
          if (array[i][j] != 0) {
            std::cout << "ng" << array[i][j] << std::endl;
            std::cout << "i " << i << std::endl;
            std::cout << "j " << j << std::endl;
            return;
          }
        }
      }
    }
    std::cout << "ok" << std::endl;
    return;
  }
};

int main() {
  class XXX *xxx = new XXX();

  xxx->loop0(SIZE);
  xxx->result(xxx->_a, 2);

  delete xxx;
}
