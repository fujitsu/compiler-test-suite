#include <stdio.h>

int Count = 0;

class BaseClass1 {
  int m01;

public:
  BaseClass1() { printf("BaseClass1.ctor()   : %d\n", m01 = ++Count); }
  ~BaseClass1() { printf("BaseClass1.dtor()   : %d\n", m01); }
};

class BaseClass2 {
  int m01;

public:
  BaseClass2() {
    printf("BaseClass2.ctor()   : %d\n", m01 = ++Count);
    if (m01 == 2)
      throw 1;
  }
  ~BaseClass2()
#if defined(__cplusplus) && __cplusplus >= 201103L
      noexcept(false)
#endif
  {
    if (m01 != 2)
      throw 1;
    printf("BaseClass2.dtor()   : %d\n", m01);
  }
};

class DerivedClass : BaseClass1, BaseClass2 {
  int m01;

public:
  DerivedClass() { printf("DerivedClass.ctor() : %d\n", m01 = ++Count); }
  ~DerivedClass() { printf("DerivedClass.dtor() : %d\n", m01); }
};

int main() {
  try {
    DerivedClass Obj1;
  } catch (...) {
  }
  try {
    DerivedClass Obj2;
  } catch (...) {
  }
  return 0;
}
