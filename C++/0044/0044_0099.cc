#include <stdio.h>
#include <stdlib.h>
#include <exception>
#include <omp.h>

int Count = 0;

class Class {
  int m01;
public:
   Class()             { printf("Class. ctor() : %d\n", m01=++Count);                      }
   Class(const Class&) { printf("Class.cctor() : %d\n", m01=++Count); if (m01==2) throw 1; }
  ~Class()             { printf("Class. dtor() : %d\n", m01        );                      }
};

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() exitting...\n");
    printf("ok\n");
    exit(0);
  }
}

void my_terminate() {
  printf("my_terminate()\n");
}

void Func() {
  if (0==omp_get_thread_num())
    throw 1;
}
int main() {
  std::set_terminate(my_terminate);
  try {
#pragma omp parallel
    {
      Func();
    }
  } catch (int) {
    printf("ng 1\n");
  } catch (...) {
    printf("ng 2\n");
  }
}

