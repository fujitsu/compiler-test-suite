#include <stdio.h>
#include <exception>
#include <setjmp.h>

int Count = 0;

extern "C" void __cxa_free_exception(void *thrown_exception) {
  printf("custom __cxa_free_exception() : %d\n", ++Count);
  if (Count==3)
    printf("ok\n");
}

const char* str_uncaught_exception() {
#if defined (_LIBCPP_VERSION)
  return "true";
#else
  return std::uncaught_exception() ? " true" : "false";
#endif
}

jmp_buf env;

extern "C" {
  void abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

class Class {
  int m01;
public:
  Class() {
    printf("Class.ctor()  : %2d, uncaught : %s\n", m01=++Count            , str_uncaught_exception());
    throw 1;
  }
};

Class Func() {
  return Class();
}

int main(void) {
  if (!setjmp(env)) {
    try {
      throw Func();
    } catch (int) {
      printf("int caught\n");
    }
    if (Count!=3)
      printf("ng 1\n");
  } else
    printf("ng 2\n");

  return 0;
}

