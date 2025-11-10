#include "000.h"

Values<long double, long double, long double> VALS = {1.0, 2.0, 3.0};

Values<long double, long double, long double> &test() {
  VALS.a += 1.0;
  VALS.b += 1.0;
  VALS.c += 1.0;
  return VALS;
}
