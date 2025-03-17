#include <iostream>
#define SIZE 100
class XXX {
private:
  int _m;
  int _n;
  void initialize() {
    init(_a, SIZE);
    init(_b, SIZE);
  }
  void init(double array[SIZE][SIZE], int size) {
    for (int j = 0; j < size; j++) {
      for (int i = 0; i < size; i++) {
        array[i][j] = (i == j) ? 1 : 0;
      }
    }
  }

public:
  double _a[SIZE][SIZE];
  double _b[SIZE][SIZE];
  XXX() {}
#define loop(func, type0, type1)                                               \
  void func(type0 size) {                                                      \
    initialize();                                                              \
    for (type0 j = 0; j < size; j++) {                                         \
      for (type1 i = 0; i < size; i++) {                                       \
        _a[i][j] = _b[i][j] + _a[i][j];                                        \
      }                                                                        \
    };                                                                         \
    result(_a, 2, size);                                                       \
  }

#define looploop(func, type0)                                                  \
  loop(func##0, type0, char) loop(func##1, type0, short)                       \
      loop(func##2, type0, int) loop(func##3, type0, long)                     \
          loop(func##4, type0, long long) loop(func##5, type0, unsigned char)  \
              loop(func##6, type0, unsigned short)                             \
                  loop(func##7, type0, unsigned int)                           \
                      loop(func##8, type0, unsigned long)                      \
                          loop(func##9, type0, unsigned long long)

  looploop(a, char) looploop(b, short) looploop(c, int) looploop(d, long)
      looploop(e, long long) looploop(f, unsigned char) looploop(g,
                                                                 unsigned short)
          looploop(h, unsigned int) looploop(i, unsigned long)
              looploop(j,
                       unsigned long long) void result(double array[SIZE][SIZE],
                                                       int c, int size) {
    int i, j;
    for (j = 0; j < size; j++) {
      for (i = 0; j < size; j++) {
        if (i == j) {
          if (array[i][j] != c) {
            std::cout << "ng " << c << " " << array[i][j] << std::endl;
            std::cout << "i " << i << std::endl;
            std::cout << "j " << j << std::endl;
            return;
          }
        } else {
          if (array[i][j] != 0) {
            std::cout << "ng" << c << " " << array[i][j] << std::endl;
            std::cout << "i " << i << std::endl;
            std::cout << "j " << j << std::endl;
            return;
          }
        }
      }
    }
    return;
  }
};
#define YYY(func)                                                              \
  xxx->func##0(SIZE);                                                          \
  xxx->func##1(SIZE);                                                          \
  xxx->func##2(SIZE);                                                          \
  xxx->func##3(SIZE);                                                          \
  xxx->func##4(SIZE);                                                          \
  xxx->func##5(SIZE);                                                          \
  xxx->func##6(SIZE);                                                          \
  xxx->func##7(SIZE);                                                          \
  xxx->func##8(SIZE);                                                          \
  xxx->func##9(SIZE);

int main() {
  class XXX *xxx = new XXX();
  YYY(a);
  YYY(b);
  YYY(c);
  YYY(d);
  YYY(e);
  YYY(f);
  YYY(g);
  YYY(h);
  YYY(i);
  YYY(j);

  std::cout << "ok" << std::endl;
  delete xxx;
}
