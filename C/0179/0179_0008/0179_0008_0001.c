#include <stdio.h>

int dowhile_const2() {
  int j,i = 0;
  int c = 0;

  do {
    j = 0;
    do {
      c = c + 1;
      ++j;
    } while (j < 100);
      ++i;
  } while (i < 100);

  return c;
}

int dowhile_var2(int n) {
  int j,i = 0;
  int c = 0;

  do {
    j = 0;
    do {
      c = c + 1;
      ++j;
    } while (j < n);
      ++i;
  } while (i < n);

  return c;
}
