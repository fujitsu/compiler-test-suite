#include "000.h"
#include <iostream>
#include <stdio.h>
using namespace std;

#define _MACRO22                                                               \
  "abc\ 	
d";

#define _MACRO23                                                               \
  "abc\ 
d";

int func(int, int);

int func\
24(int, int);

int func25(int, int);

int func26(int, int);

int main() {

  header("test", "linefeed notation");

  const char *c22 = _MACRO22;

  const char *c23 = _MACRO23;

  int ia, ib, i24, i25, i26;

  ia = 2;
  ib = 12;
  i24 = func24(ia, ib);

  ichck(024, 25, i24, "linefeed notation No.24");

  i25 = func25(ia, ib);

  ichck(025, 26, i25, "linefeed notation No.25");

  i26 = func\
26(ia, ib);

  ichck(026, 27, i26, "linefeed notation No.26");

  header("test", "linefeed notation");

  return 0;
}

int func(int x, int y) {
  int z = x * y;
  return z;
}

int func24(int x, int y) {
  int z = x * y + 1;
  return z;
}

int func\
25(int x, int y) {
  int z = x * y + 2;
  return z;
}

int func26(int x, int y) {
  int z = x * y + 3;
  return z;
}
