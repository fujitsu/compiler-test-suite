#include <stdio.h>
#include <exception>
#include <setjmp.h>

jmp_buf env;
int Count=0;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

const char* str_uncaught_exception() {
  return std::uncaught_exception() ? " true" : "false";
}

void my_unexpected() {
  printf("my_unexpected() : uncaught : %s\n", str_uncaught_exception());
}

class Class {
  int m01;
public:
  Class() {
    printf("Class.ctor()  : %3d, uncaught : %s\n", m01=++Count            , str_uncaught_exception());
  }
  ~Class() {
    printf("Class.dtor()  : %3d, uncaught : %s\n", m01                    , str_uncaught_exception());
    std::unexpected();
  }
};
int main() {
  std::set_unexpected(my_unexpected);
  if      (0==setjmp(env))
    std::unexpected();
  else
    printf("is it correct?\n");
}

