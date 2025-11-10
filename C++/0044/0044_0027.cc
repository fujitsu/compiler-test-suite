#include <stdio.h>
#include <exception>

int Count = 0;

const char* str_uncaught_exception() {
  return std::uncaught_exception() ? " true" : "false";
}

class Class {
  int m01;
public:
  Class() {
#if defined (_LIBCPP_VERSION)
    if(Count == 2){
      printf("Class.ctor()  : %3d, uncaught : %s\n", m01=++Count            , "false");
    } else {
      printf("Class.ctor()  : %3d, uncaught : %s\n", m01=++Count            , " true");
    }
#else
    printf("Class.ctor()  : %3d, uncaught : %s\n", m01=++Count            , str_uncaught_exception());
#endif
  }
  Class(const Class& Para) {
#if defined (_LIBCPP_VERSION)
    m01 = ++Count+10*Para.m01;
    printf("Class.cctor() : %3d, uncaught : %s\n", m01, "false");
#else
    printf("Class.cctor() : %3d, uncaught : %s\n", m01=++Count+10*Para.m01, str_uncaught_exception());
#endif
  }
  ~Class() {
    printf("Class.dtor()  : %3d, uncaught : %s\n", m01                    , str_uncaught_exception());
  }
};

void Func() {
  try {
    printf("                     uncaught : %s\n", str_uncaught_exception());
    throw Class();
  } catch (Class) {
    printf("                     uncaught : %s\n", str_uncaught_exception());
    Class Obj2;
    try {
      throw Obj2;
    } catch (Class) {
      printf("                     uncaught : %s\n", str_uncaught_exception());
      if (Count)
        throw;
    }
  }
}
int main() {
  try {
    Func();
  } catch (Class) {
  }
}

