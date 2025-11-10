#include <stdio.h>
#include <exception>
#include <setjmp.h>

int Count = 0;

const char* str_uncaught_exception() {
  return std::uncaught_exception() ? " true" : "false";
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
  Class()  {
#if defined (_LIBCPP_VERSION)
    if(Count == 0){
      printf("Class.ctor() : %d, uncaught : %s\n", m01=++Count, str_uncaught_exception());
    } else{
      printf("Class.ctor() : %d, uncaught : true\n", m01=++Count);
    }
#else
    printf("Class.ctor() : %d, uncaught : %s\n", m01=++Count, str_uncaught_exception());
#endif
  }
  ~Class() {
    printf("Class.dtor() : %d, uncaught : %s\n", m01        , str_uncaught_exception());
  }
};

int main(void) {
  if (!setjmp(env))
  {
    Class Obj;
    throw Class();
  }
  else
    printf("ok\n");

  return 0;
}

