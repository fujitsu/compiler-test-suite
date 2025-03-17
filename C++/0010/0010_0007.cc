#include <omp.h>
#include <stdio.h>
class test {
public:
  int a, b, c;
  test() {
    a = 10;
    b = 10;
    c = 10;
  }

  ~test() {}

  test(const test &obj) {
    a = obj.a;
    b = obj.b;
    c = obj.c;
  }

  test &operator=(const test &obj) {
    if (this != &obj) {
      a = obj.a;
      b = obj.b;
      c = obj.c;
    }
    return *this;
  }

  void set(int d) {
    a = d;
    b = d * 2;
    c = d * 3;
  }
};

int main() {
  int i, b;
  test a;
  a.set(100);
  b = -99;
#pragma omp parallel
  {
#pragma omp for ordered lastprivate(a) reduction(+ : b)
    for (i = 0; i < 10; i++) {
#pragma omp ordered
      {
        a.set(i);
        b = b + 2;
      }
    }
  }
  if (a.a == 9 && a.b == 18 && a.c == 27 && b == (-99 + 10 * 2))
    printf("OK\n");
  else
    printf("NG : %d,%d,%d, b=%d\n", a.a, a.b, a.c, b);
  return 0;
}
