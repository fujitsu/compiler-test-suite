#include "000.h"
#include <iostream>

namespace nm0 {
  namespace {
    template <class T> class cl01 {};
    template <class T> T func01(cl01<T> cls03);
  }
} 

namespace {
  namespace nm1_1 {
    template <class T> class cl01 {
    public:
    T clf01() { return (0); }
    };
    template <class T> T func01(cl01<T> cls02) { return (cls02.clf01()); }
  }
  namespace nm1_2 {
    template <class T> class cl01 {
      public:
      T clf01() { return (1); }
    };
    template <class T> T func01(cl01<T>) { return (1); }
  }
  using namespace nm1_1 __attribute__((strong));
  unsigned int func01(cl01<int> cls03) { return (cls03.clf01() + 128); }

  template <class T> T func(cl01<T>) { return (0); }
}

int main() {
  header("test", "strong attribute test");

  {
    long l01;
    cl01<long> cls01;
    l01 = func01(cls01);
    lichck(01, func(cls01), l01, "function return value");
  }
  {
    unsigned int ui01;
    cl01<int> cls01;
    ui01 = cls01.clf01();
    ichck(02, func(cls01), ui01, "member function return value");
    ui01 = func01(cls01);
    lichck(03, 128, ui01, "function return value");
  }

  header("test", "strong attribute test");
  return 0;
}
