#include <stdio.h>
#include <exception>
#include <setjmp.h>

const char* str_uncaught_exception() {
  return std::uncaught_exception() ? " true" : "false";
}

jmp_buf env;
int Count=0;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void my_terminate() {
  printf("my_terminate()  : uncaught : %s\n", str_uncaught_exception());
}

class Class {
  int m01;
public:
  Class() {
    printf("Class.ctor()  : %3d, uncaught : %s\n", m01=++Count            , str_uncaught_exception());
  }
  ~Class() {
    printf("Class.dtor()  : %3d, uncaught : %s\n", m01                    , str_uncaught_exception());
    std::terminate();
  }
};

void Func() {
  Class Obj;
  throw 1.0;
}
int main() {
  std::set_terminate(my_terminate);
  if (!setjmp(env))
    try {
      Func();
    } catch (double) {}
  else
    printf("ok\n");
}

