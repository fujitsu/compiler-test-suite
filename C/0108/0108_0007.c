#include <stdio.h>

int sub (int a, int b) {
  return a * b;
}

int SUB (int a) {
  return a + a;
}

int main() {
  int ret = 0;
  int i;

  for (i = 0; i < 123; i++) {
    if (i % 4)
      ret += sub (i,i);
    else
      ret += SUB (i);
  }
  printf ("%d\n", ret);
}
