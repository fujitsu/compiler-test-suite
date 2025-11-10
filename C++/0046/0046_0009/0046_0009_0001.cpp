#include "000.h"

Values<double, double, double> VALS = {1.0, 2.0, 3.0};

Values<double, double, double> &test() {
  VALS.a += 1.0;
  VALS.b += 1.0;
  VALS.c += 1.0;
  return VALS;
}
