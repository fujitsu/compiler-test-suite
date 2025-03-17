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

  CLS_TEST &operator=(const CLS_TEST &obj) {
    a = obj.a;
    b = obj.b;
    c = obj.c;
    return *this;
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
      printf("task1 fp: &cls1=%llx, cls1.a=%d\n", &cls1, cls1.a);
    }
    cls1.a = 21;
    cls1.b = 22;
    cls1.c = 23;
#pragma omp parallel shared(cls1)
    {
      if (cls1.a != 21 || cls1.b != 22 || cls1.c != 23) {
        printf("NG-2: cls1={a=%d b=%d c=%d}\n", cls1.a, cls1.b, cls1.c);
        printf("parallel1 sh: &cls1=%llx, cls1.a=%d\n", &cls1, cls1.a);
      }
#pragma omp sections lastprivate(cls1)
      {
        {
          cls1.a = 31;
          cls1.b = 32;
          cls1.c = 33;
        }
      }
      if (cls1.a != 31 || cls1.b != 32 || cls1.c != 33) {
        printf("NG-21: cls1={a=%d b=%d c=%d}\n", cls1.a, cls1.b, cls1.c);
        printf("parallel2 sh: &cls1=%llx, cls1.a=%d\n", &cls1, cls1.a);
      }
      cls1.a = 41;
      cls1.b = 42;
      cls1.c = 43;
    }
    if (cls1.a != 41 || cls1.b != 42 || cls1.c != 43) {
      printf("NG-22: cls1={a=%d b=%d c=%d}\n", cls1.a, cls1.b, cls1.c);
      printf("task2 fp: &cls1=%llx, cls1.a=%d\n", &cls1, cls1.a);
    }
  }
#pragma omp taskwait
}

int main(void) {
  setenv("OMP_MAX_ACTIVE_LEVELS", "0", 1);
#pragma omp parallel
  { sub00(); }
  printf("pass\n");
  return 0;
}
