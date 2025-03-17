#include <omp.h>
#include <stdio.h>

class CLS_TEST {
public:
  int a, b, c;
  CLS_TEST() {
    a = 10;
    b = 10;
    c = 10;
  };
  ~CLS_TEST(){};
  CLS_TEST(const CLS_TEST &obj) {
    a = obj.a;
    b = obj.b;
    c = obj.c;
  };
};

void sub01() {
  CLS_TEST cls1, cls2;
#pragma omp task firstprivate(cls1, cls2)
  {
    if (cls1.a != 10 || cls1.b != 10 || cls1.c != 10 || cls2.a != 10 ||
        cls2.b != 10 || cls2.c != 10) {
      printf("NG-1: cls1.a=%d\n", cls1.a);
      printf("    : cls1.b=%d\n", cls1.b);
      printf("    : cls1.c=%d\n", cls1.c);
      printf("    : cls2.a=%d\n", cls2.a);
      printf("    : cls2.b=%d\n", cls2.b);
      printf("    : cls2.c=%d\n", cls2.c);
    }
    cls1.a += 100;
    cls1.b += 100;
    cls1.c += 100;
    cls2.a = cls2.b = cls2.c = 50;
  }
#pragma omp taskwait
  if (cls1.a != 10 || cls1.b != 10 || cls1.c != 10 || cls2.a != 10 ||
      cls2.b != 10 || cls2.c != 10) {
    printf("NG-2: cls1.a=%d\n", cls1.a);
    printf("    : cls1.b=%d\n", cls1.b);
    printf("    : cls1.c=%d\n", cls1.c);
    printf("    : cls2.a=%d\n", cls2.a);
    printf("    : cls2.b=%d\n", cls2.b);
    printf("    : cls2.c=%d\n", cls2.c);
  }
}

int main() {
#pragma omp parallel
  { sub01(); }
  printf("pass\n");
}
