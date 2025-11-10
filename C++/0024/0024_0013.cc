#include "000.h"
#include <iostream>

namespace nm0 {
  namespace nm0_1 {
    template <typename T> T func01(T t01, T t02) {
      return (t01 < t02) ? (t01) : (t02);
    }
  }
}
namespace nm1 {
  namespace nm1_1 {
    template <typename T> T func01(T t01, T t02) {
      return (t01 > t02) ? (t01) : (t02);
    }
  }
  namespace nm1_2 {
    template <typename T> T func01(T t01, T t02) {
      return (t01 > t02) ? (t01) : (t02);
    }
  }
  using namespace nm0::nm0_1 __attribute__((strong));
  double func01(double std01, double std02) { return (std01 * std02); }
}

int main() {
  header("test", "strong attribute test");

  {
    int i01 = 0, i02 = 1, i03;
    i03 = nm1::func01(i01, i02);
    ichck(01, 0, i03, "function return value");
  }
  {
    double d01 = 3.14, d02 = 2.5, d03;
    d03 = nm1::func01(d01, d02);
    dchck(02, 7.85, d03, 0.0, "function return value");
  }

  header("test", "strong attribute test");
  return 0;
}
