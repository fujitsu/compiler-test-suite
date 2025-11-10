#include <stdio.h>
#include <exception>
#include <stdlib.h>

int Count = 0;

const char* str_uncaught_exception() {
  return std::uncaught_exception() ? " true" : "false";
}

void my_terminate() {
  printf("my_terminate()  : uncaught : %s\n", str_uncaught_exception());
  printf("maybe ok, exitting...\n");
  exit(0);
}

class Class {
  int m01;
public:
  Class()  {
#if defined (_LIBCPP_VERSION)
    printf("Class.ctor() : %d, uncaught : %s\n", m01=++Count, " false");
#else
    printf("Class.ctor() : %d, uncaught : %s\n", m01=++Count, str_uncaught_exception());
#endif
  }
  ~Class() {
    printf("Class.dtor() : %d, uncaught : %s\n", m01        , str_uncaught_exception());
    if (m01==1)
      throw 1;
    else
      printf("ng0\n");
  }
};
int main() {
  std::set_terminate(my_terminate);
  try {
    try {
      throw Class();
    } catch (...) {
      if (Count)
        throw Class();
    }
  } catch (int) {
    printf("ng1\n");
  } catch (Class) {
    printf("ng2\n");
  } catch (...) {
    printf("ng3\n");
  }
}

