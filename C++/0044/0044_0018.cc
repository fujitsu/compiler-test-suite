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
  Class() {
    printf("Class.ctor()  : %3d, uncaught : %s\n", m01=++Count            , str_uncaught_exception());
  }
  Class(const Class& Para) {
#if defined (_LIBCPP_VERSION)
    printf("Class.cctor() : %3d, uncaught : %s\n", m01=++Count+10*Para.m01, " true");
#else
    printf("Class.cctor() : %3d, uncaught : %s\n", m01=++Count+10*Para.m01, str_uncaught_exception());
#endif
    if (123==m01)
      throw 1;
  }
  ~Class() {
    printf("Class.dtor()  : %3d\n"               , m01                                              );
  }
};
int main() {
  setvbuf(stdout, NULL, _IONBF, 0);
  Class Obj;
  if (!setjmp(env))
    try {
      try {
        try {
            throw Obj;
        } catch (int) {
          printf("ng1\n");
        }
      } catch (Class) {
        printf("ng2\n");
      }
    } catch (int) {
      printf("ng3\n");
    }
  else
    printf("ok\n");
}

