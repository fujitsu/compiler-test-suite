#include "005.h"

Values<int, float, double> VALS = {1, 2.0f, 3.0};

Values<int, float, double> &test() {
  VALS.a += 1;
  VALS.b += 1.0f;
  VALS.c += 1.0;
  return VALS;
}
