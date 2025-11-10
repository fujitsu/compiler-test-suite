#include "000.h"

Values<short, short, short> VALS = {1, 2, 3};

Values<short, short, short> &test() {
  VALS.a += 1;
  VALS.b += 1;
  VALS.c += 1;
  return VALS;
}
