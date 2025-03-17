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
};

test a[10];

void a16(void) {
  int i;
#pragma omp parallel
  {
#pragma omp master
    { a[0].set(omp_get_num_threads()); }

#pragma omp critical(aaa)
    { a[1] = a[1] + 1; }

#pragma omp critical(BBB)
    { a[2] = a[2] + 1; }

#pragma omp critical
    { a[3] = a[3] + 1; }
  }

  if (a[1].a == a[0].a + 10 && a[2].b == a[0].b / 2 + 10 &&
      a[3].c == a[0].c / 3 + 10) {
    printf("OK\n");
  } else {
    printf("NG :");
    for (i = 0; i < 4; i++)
      printf("a[%d]=%d, %d, %d  ", i, a[i].a, a[i].b, a[i].c);
    printf("\n");
  }
}

int main() { a16(); }
