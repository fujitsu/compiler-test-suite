#include "011.h"

Values<int, float, double>::X VALS = {1, 2.0f, 3.0};

Values<int, float, double>::X &test() {
  VALS.a += 1;
  VALS.b += 1.0f;
  VALS.c += 1.0;
  return VALS;
}
