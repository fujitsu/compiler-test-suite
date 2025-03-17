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
  int i, j;
  test a[10][10], b;
  for (i = 0; i < 10; i++) {
    for (j = 0; j < 10; j++)
      a[i][j].set(100);
  }
  b.set(-1);
#pragma omp parallel
#pragma omp for ordered collapse(2) lastprivate(b)
  for (j = 0; j < 10; j++) {
    for (i = 0; i < 10; i++) {
#pragma omp ordered
      {
        a[i][j].set(i + j);
        b = a[i][j];
      }
    }
  }

  for (j = 0; j < 10; j++) {
    for (i = 0; i < 10; i++) {
      if (a[i][j].a != i + j || a[i][j].b != (i + j) * 2 ||
          a[i][j].c != (i + j) * 3 || b.a != a[9][9].a || b.b != a[9][9].b ||
          b.c != a[9][9].c) {
        printf("NG : a[%d][%d]=%d,%d,%d", i, j, a[i][j].a, a[i][j].b,
               a[i][j].c);
        printf(", b=%d,%d,%d\n", b.a, b.b, b.c);
        return 1;
      }
    }
  }
  printf("OK\n");
  return 0;
}
