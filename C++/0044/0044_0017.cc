#include <new>
#include <stdio.h>
#include <stdlib.h>

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
  DerivedClass *P = (DerivedClass *)malloc(sizeof(DerivedClass));
  if (P) {
    try {
      DerivedClass *P1 = new (P) DerivedClass();
      if (P1) {
        P1->~DerivedClass();
        operator delete(P1, P);
      }
    } catch (...) {
    }
    try {
      DerivedClass *P2 = new (P) DerivedClass();
      if (P2) {
        P2->~DerivedClass();
        operator delete(P2, P);
      }
    } catch (...) {
    }
    free(P);
  }
  return 0;
}
