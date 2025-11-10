#include "000.h"
#include <iostream>

namespace {
  namespace nm1_1 {
    template <typename T> T func01(T t01, T t02) { return (t01 * t02); }
  }
  namespace nm1_2 {
    template <typename T> T func01(T t01, T t02) {
      return (t01 > t02) ? (t01) : (t02);
    }
  }
  using namespace nm1_1 __attribute__((strong));
  long double func01(long double stld01, long double stld02) {
    return (stld01 / stld02);
  }
}

int main() {
  header("test", "strong attribute test");

  {
    long long int lli01 = 0, lli02 = 1, lli03;
    lli03 = func01(lli01, lli02);
    llichck(01, 0, lli03, "function return value");
  }
  {
    long double ld01 = 3.14, ld02 = 2.5, ld03;
    ld03 = func01(ld01, ld02);
    ldchck(02, 1.256, ld03, 0.0, "function return value");
  }

  header("test", "strong attribute test");
  return 0;
}
