#include "000.h"

Values<long, long, long> VALS = {1, 2, 3};

Values<long, long, long> &test() {
  VALS.a += 1;
  VALS.b += 1;
  VALS.c += 1;
  return VALS;
}
