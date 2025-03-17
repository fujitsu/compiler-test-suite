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
  int b;
  test a;
  a.set(100);
  b = 0;
#pragma omp parallel
  {
#pragma omp sections private(a) reduction(+ : b)
    {
#pragma omp section
      {
        a.set(1);
        b = b + 1;
      }
#pragma omp section
      {
        a.set(2);
        b = b + 1;
      }
#pragma omp section
      {
        a.set(3);
        b = b + 1;
      }
#pragma omp section
      {
        a.set(4);
        b = b + 1;
      }
    }
  }
  if (a.a == 100 && a.b == 200 && a.c == 300 && b == 4)
    printf("OK\n");
  else
    printf("NG : %d,%d,%d, %d\n", a.a, a.b, a.c, b);
  return 0;
}
