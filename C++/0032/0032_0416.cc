#include <stdio.h>

extern double ftest(double x) { printf("ng\n"); return x; }

namespace ntest {
  template<class T> inline T ftest(T x) { printf("ok\n"); return x; }

  template<class T> struct S {
    T x() { return T(); }
    void f();
  };

  template<class T> void S<T>::f() {
    ftest(x());
  }
}

int main() {
  ntest::S<double> s;
  s.f();
  return 0;
}

