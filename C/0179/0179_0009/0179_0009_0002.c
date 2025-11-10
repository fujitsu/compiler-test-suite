#include <stdio.h>

int for_const3() {
  int i,j,k,c=0;
  for (i = 0; i < 100; ++i) {
    for (j = 0; j < 100; ++j) {
      for (k = 0; k < 100; ++k) {
	c = c + 1;
      }
    }
  }
  return c;
}

int for_var3(int a) {
  int i,j,k,c=0;
  for (i = 0; i < a; ++i) {
    for (j = 0; j < a; ++j) {
      for (k = 0; k < a; ++k) {
	c = c + 1;
      }
    }
  }
  return c;
}
