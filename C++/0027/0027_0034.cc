#include <iostream>
#define SIZE 100
class XXX {
private:
  int _m;
  int _n;
  int _size;
  void initial(double array[SIZE][SIZE]) {
    int i = 0;
    while (i < _size) {
      int j = 0;
      while (j < _size) {
        array[i][j] = (i == j) ? 1 : 0;
        j++;
      }
      i++;
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

    int j = 0;
    while (j < size) {
      int i = 0;
      while (i < size) {
        _a[i][j] = _b[i][j] + _c[i][j];
        i++;
      }
      j++;
    }
  }
  void result(double array[SIZE][SIZE], int c) {
    int j = 0;
    while (j < _size) {
      int i = 0;
      while (i < _size) {
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
        i++;
      }
      j++;
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
