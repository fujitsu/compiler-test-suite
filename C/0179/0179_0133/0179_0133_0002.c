#include <stdio.h>

int while_const3() {
  int k,j,i = 0;
  int c = 0;

  while (i < 100) {
    j = 0;
    while (j < 100) {
      k = 0;
      while (k < 100) {
	c = c + 1;
	++k;
      }
      ++j;
    }
    ++i;
  }
  return c;
}

int while_var3(int a) {
  int k,j,i=0;
  int c=0;

  while (i < a) {
    j = 0;
    while (j < a) {
      k = 0;
      while (k < 100) {
	c = c + 1;
	++k;
      }
      ++j;
    }
    ++i;
  }
  return c;
}
