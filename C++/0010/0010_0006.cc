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

  test operator+(int i) {
    a += i;
    b += i;
    c += i;
    return *this;
  }

  test operator*(int i) {
    a *= i;
    b *= i;
    c *= i;
    return *this;
  }
};

int main() {
  int i, n, num;
  test a;
  a.set(-99);
#pragma omp parallel
  {
#pragma omp master
    num = omp_get_num_threads();
#pragma omp for ordered firstprivate(a) lastprivate(a)
    for (i = 0; i < 10; i++) {
#pragma omp ordered
      { a = a + 1; }
    }
  }

  if ((n = 10 / num) == 0)
    n = 1;
  if (a.a == -99 + n && a.b == -99 * 2 + n && a.c == -99 * 3 + n)
    printf("OK\n");
  else
    printf("NG : %d,%d,%d, n=%d\n", a.a, a.b, a.c, n);
  return 0;
}
