#include <stdio.h>

#include "000.h"

int main() {
  int x;
  int a[100000], b[100000], c[100000];

  for (x = 0; x < 100000; x++) {
    b[x] = c[x] = 5;
  }

  test(100000, a, b, c);
  printf ("%d\n", a[5]);
}
