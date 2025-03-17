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
  int i;
  test a;
  a.set(100);
#pragma omp parallel
  {
#pragma omp for ordered private(a)
    for (i = 0; i < 10; i++) {
#pragma omp ordered
      { a.set(i); }
    }
  }
  if (a.a == 100 && a.b == 200 && a.c == 300)
    printf("OK\n");
  else
    printf("NG : %d,%d,%d\n", a.a, a.b, a.c);
  return 0;
}
