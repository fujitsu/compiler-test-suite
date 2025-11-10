#include <stdio.h>
#include <exception>
#include <setjmp.h>

int Count = 0;

class Class {
  int m01;
public:
   Class()             { printf("Class. ctor() : %d\n", m01=++Count);                      }
   Class(const Class&) { printf("Class.cctor() : %d\n", m01=++Count); if (m01==2) throw 1; }
  ~Class()             { printf("Class. dtor() : %d\n", m01        );                      }
};

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void my_terminate() {
  printf("my_terminate()\n");
}
int main() {
  std::set_terminate(my_terminate);
  if (!setjmp(env))
    try {
      try {
        throw Class();
      } catch(Class) {
        printf("ng 1\n");
      }
    } catch (...) {
      printf("ng 2\n");
    }
  else
    printf("ok\n");
}

