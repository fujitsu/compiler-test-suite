#include "000.h"

Values<_Float16, _Float16, _Float16> VALS = {1.0, 2.0, 3.0};

Values<_Float16, _Float16, _Float16> &test() {
  VALS.a += 1.0;
  VALS.b += 1.0;
  VALS.c += 1.0;
  return VALS;
}
