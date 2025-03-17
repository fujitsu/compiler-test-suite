#include <omp.h>
#include <stdio.h>

class CLS_TEST {
public:
  int a, b, c;
  CLS_TEST() {
    a = 0;
    b = 0;
    c = 0;
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
  cls1.a = 11;
  cls1.b = 12;
  cls1.c = 13;
#pragma omp task firstprivate(cls1)
  {
    if (cls1.a != 11 || cls1.b != 12 || cls1.c != 13) {
      printf("NG-1: cls1={a=%d b=%d c=%d\n", cls1.a, cls1.b, cls1.c);
    }
    cls1.a = 21;
    cls1.b = 22;
    cls1.c = 23;
#pragma omp parallel firstprivate(cls1)
    {
      if (cls1.a != 21 || cls1.b != 22 || cls1.c != 23) {
        printf("NG-2: cls1={a=%d b=%d c=%d\n", cls1.a, cls1.b, cls1.c);
      }
      cls1.a = 150;
      cls1.b = 200;
      cls1.c = 250;
    }
    if (cls1.a != 21 || cls1.b != 22 || cls1.c != 23) {
      printf("NG-3: cls1={a=%d b=%d c=%d\n", cls1.a, cls1.b, cls1.c);
    }
    cls1.a = 151;
    cls1.b = 201;
    cls1.c = 251;
  }
#pragma omp taskwait
  if (cls1.a != 11 || cls1.b != 12 || cls1.c != 13) {
    printf("NG-4: cls1={a=%d b=%d c=%d\n", cls1.a, cls1.b, cls1.c);
  }
}

int main(void) {
#pragma omp parallel
  { sub00(); }
  printf("pass\n");
  return 0;
}
