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

int test_can(int nt) {
  int k, res = 0;
  test a;
  a.set(100);
  k = 1;
#pragma omp parallel
  {
#pragma omp sections lastprivate(a) reduction(+ : k)
    {
#pragma omp section
      {
        a.set(1);
        k = k + 1;
      }
#pragma omp section
      {
        a.set(2);
        k = k + 1;
      }
#pragma omp section
      {
        a.set(3);
        k = k + 1;
      }
#pragma omp section
      {
        a.set(4);
        k = k + 1;
      }
    }
  }
  if (k != 4 + 1)
    res++;
  if (a.a != 4 || a.b != 8 || a.c != 12)
    res++;
  if (res != 0)
    printf("NG nt=%d, a=%d,%d,%d, k=%d\n", nt, a.a, a.b, a.c, k);
  return res;
}

int get_num(void) {
  int nt;
#pragma omp parallel
  {
#pragma omp master
    { nt = omp_get_num_threads(); }
  }
  return nt;
}

int main() {
  int nt, res;
  nt = get_num();
  res = test_can(nt);
  if (res == 0) {
    printf("pass\n");
  } else {
    printf("NG nt=%d, res=%d\n", nt, res);
  }
  return 0;
}
