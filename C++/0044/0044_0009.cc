#include <stdio.h>
#include <exception>
#include <setjmp.h>

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void my_terminate_1() {
  printf("my_terminate_1() : ok\n");
}

void my_terminate_2() {
  printf("my_terminate_2() : ng\n");
}

class Class {
public:
  ~Class() {
    printf("Classs.dtor()\n");
    printf("set my_terminate_2()\n");
    std::set_terminate(my_terminate_2);
  }
};

void Func() {
  Class Obj;
  printf("set my_terminate_1()\n");
  std::set_terminate(my_terminate_1);
  printf("throw 1\n");
  throw 1;
}
int main() {
  if (!setjmp(env))
    Func();
}

