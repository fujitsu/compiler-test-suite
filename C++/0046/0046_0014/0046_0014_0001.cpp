#include "000.h"

Values<char, char, char> VALS = {1, 2, 3};

Values<char, char, char> &test() {
  VALS.a += 1;
  VALS.b += 1;
  VALS.c += 1;
  return VALS;
}
