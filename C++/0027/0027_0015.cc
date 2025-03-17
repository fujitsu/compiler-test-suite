#include <iostream>
#include <stdio.h>

int main() {
  int i, j;
  int b = 0, d = 0;
  for (i = 0; i < 10; i++) {
    b += i;
  }
  for (j = 0; j < 10; j++) {
    d += j;
  }

  if (b == d) {
    puts("OK");
  } else {
    puts("NG");
  }

  return 0;
}
