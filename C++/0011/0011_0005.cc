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

void sub00() {
  CLS_TEST cls1;
#pragma omp task firstprivate(cls1)
  {
    if (cls1.a != 10 || cls1.b != 10 || cls1.c != 10) {
      printf("NG-1: cls1={a=%d b=%d c=%d\n", cls1.a, cls1.b, cls1.c);
    }
#pragma omp parallel private(cls1)
    {
      cls1.a = 150;
      cls1.b = 200;
      cls1.c = 250;
    }
    if (cls1.a != 10 || cls1.b != 10 || cls1.c != 10) {
      printf("NG-2: cls1={a=%d b=%d c=%d\n", cls1.a, cls1.b, cls1.c);
    }
  }
#pragma omp taskwait
  if (cls1.a != 10 || cls1.b != 10 || cls1.c != 10) {
    printf("NG-3: cls1={a=%d b=%d c=%d\n", cls1.a, cls1.b, cls1.c);
  }
}

int main(void) {
#pragma omp parallel
  { sub00(); }
  printf("pass\n");
  return 0;
}
