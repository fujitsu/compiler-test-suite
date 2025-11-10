#include "000.h"

Values<__fp16, __fp16, __fp16> VALS = {1.0, 2.0, 3.0};

Values<__fp16, __fp16, __fp16> &test() {
  VALS.a += 1.0;
  VALS.b += 1.0;
  VALS.c += 1.0;
  return VALS;
}
