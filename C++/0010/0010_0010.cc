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
  test a;
  a.set(100);
#pragma omp parallel
  {
#pragma omp sections lastprivate(a)
    {
#pragma omp section
      { a.set(1); }
#pragma omp section
      { a.set(2); }
#pragma omp section
      { a.set(3); }
#pragma omp section
      { a.set(4); }
    }
  }
  if (a.a == 4 && a.b == 8 && a.c == 12)
    printf("OK\n");
  else
    printf("NG : %d,%d,%d\n", a.a, a.b, a.c);
  return 0;
}
