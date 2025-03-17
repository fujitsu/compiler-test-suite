#include <omp.h>
#include <stdio.h>
#include <unistd.h>
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
  int b, i, j, k, l;
  double a;
  float m = 3.00;
  test ord[101];

  omp_set_dynamic(0);
  setenv("OMP_NESTED", "TRUE", 1);
#pragma omp parallel private(ord, a, b, k)
  {
#pragma omp for ordered schedule(static, 1)
    for (i = 0; i < 100; i++) {
      a = (double)(i + 1) / (double)m;
      b = (int)a;
      if ((int)a == b)
#pragma omp ordered
      {
        for (l = 0; l < 101; l++)
          ord[l].set(-99);
#pragma omp parallel
        {
#pragma omp for ordered
          for (j = 0; j < 100; j++) {
#pragma omp ordered
            ord[j].set(j);
          }
        }

        for (k = 0; k < 100; k++) {
          if (ord[k].a != k || ord[k].b != k * 2 || ord[k].c != k * 3) {
            printf("[%d]NG k=%d, ord[k]=%d,%d,%d\n", omp_get_thread_num(), k,
                   ord[k].a, ord[k].b, ord[k].c);
            _exit(1);
          }
        }
      }
    }
  }
  printf("OK\n");
  return 0;
}
