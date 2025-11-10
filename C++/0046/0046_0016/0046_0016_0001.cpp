#include "000.h"

Values<int, int, int> VALS = {1, 2, 3};

Values<int, int, int> &test() {
  VALS.a += 1;
  VALS.b += 1;
  VALS.c += 1;
  return VALS;
}
