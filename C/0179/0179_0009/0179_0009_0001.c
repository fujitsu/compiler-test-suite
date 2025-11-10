#include <stdio.h>

int for_const2() {
  int i,j,c=0;
  for (i = 0; i < 100; ++i) {
    for (j = 0; j < 100; ++j) {
      c = c + 1;
    }
  }
  return c;
}

int for_var2(int a) {
  int i,j,c=0;
  for (i = 0; i < a; ++i) {
    for (j = 0; j < a; ++j) {
      c = c + 1;
    }
  }
  return c;
}
