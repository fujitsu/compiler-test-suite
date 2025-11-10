#include <stdio.h>

int pragma_const2() {
  int i;
  int c = 0;
  for (i = 0; i < 100; ++i) {
    c = c + 1;
  }
  for (i = 0; i < 100; ++i) {
    c = c + 1;
  }
  return c;
}

int pragma_var2(int n) {
  int i;
  int c = 0;
  for (i = 0; i < n; ++i) {
    c = c + 1;
  }
  for (i = 0; i < n; ++i) {
    c = c + 1;
  }
  return c;
}
