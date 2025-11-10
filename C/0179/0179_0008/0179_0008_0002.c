#include <stdio.h>

int dowhile_const3() {
  int k,j,i = 0;
  int c = 0;

  do {
    j = 0;
    do {
      k = 0;
      do {
	c = c + 1;
	++k;
      } while (k < 100);
      ++j;
    } while (j < 100);
    ++i;
  } while (i < 100);
  
  return c;
}

int dowhile_var3(int n) {
  int k,j,i = 0;
  int c = 0;

  do {
    j = 0;
    do {
      k = 0;
      do {
	c = c + 1;
	++k;
      } while (k < n);
      ++j;
    } while (j < n);
    ++i;
  } while (i < n);
  
  return c;
}
