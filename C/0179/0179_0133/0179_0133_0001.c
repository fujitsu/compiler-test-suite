#include <stdio.h>

int while_const2() {
  int j,i = 0;
  int c = 0;

  while (i < 100) {
    j = 0;
    while (j < 100) {
      c = c + 1;
      ++j;
    }
    ++i;
  }
  return c;
}

int while_var2(int a) {
  int j,i=0;
  int c=0;

  while (i < a) {
    j = 0;
    while (j < a) {
      c = c + 1;
      ++j;
    }
    ++i;
  }
  return c;
}
