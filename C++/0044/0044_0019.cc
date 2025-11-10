#include <stdio.h>
#include <exception>
#include <setjmp.h>

int Count = 0;

const char* str_uncaught_exception() {
  return std::uncaught_exception() ? " true" : "false";
}

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

class Class {
  int m01;
public:
  Class()  {
    printf("Class.ctor() : %d, uncaught : %s\n", m01=++Count, str_uncaught_exception());
  }
  ~Class() {
    printf("Class.dtor() : %d, uncaught : %s\n", m01        , str_uncaught_exception());
    throw 1;
  }
};
int main() {
  if (!setjmp(env))
    try {
      Class Obj;
      throw 1;
    } catch (int) {
      printf("ng\n");
    }
  else
    printf("ok\n");
}

