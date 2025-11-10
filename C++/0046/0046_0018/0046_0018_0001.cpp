#include "000.h"

X X1{1};
X X2{2};
X X3{3};
Values<X, X, X> VALS = {X1, X2, X3};

Values<X, X, X> &test() {
  VALS.a.x += 1;
  VALS.b.x += 1;
  VALS.c.x += 1;
  return VALS;
}
